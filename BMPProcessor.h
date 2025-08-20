#pragma once
/*******************************************************************************
Processing BMP Images (Reading and Writing RGB and Greyscale images of .bmp Type)
BSD 2-Clause License
Copyright (c) 2021, Changjiang Yang
All rights reserved.
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution. 
******************************************************************************/

#include <vector>
#include <fstream>
#include <iostream>

namespace image {
#pragma pack(push, 1)
	struct BMPHeader {
		// BMP file header
		uint16_t magic_number{ 0x4D42 }; // magic number: BM
		uint32_t file_size{ 0 };	// in bytes
		uint16_t reserved1{ 0 };	// Reserved
		uint16_t reserved2{ 0 };    // Reserved
		uint32_t offset_data{ 54 };  // Offset of byte where bitmap image data starts

		// BMP information header
		uint32_t header_size{ 40 };	// size of this header, in bytes (40)
		int32_t width{ 0 };         // width in pixels (signed integer)
		int32_t height{ 0 };        // height in pixels (signed integer, positive- bottom-up, negative- top-down)
		uint16_t planes{ 1 };       // number of color planes (must be 1)
		uint16_t bit_per_pixel{ 24 };    // number of bits per pixel. Typical values are 1, 4, 8, 16, 24 and 32
		uint32_t compression_method{ 0 };  // compression method: 0 - uncompressed.
		uint32_t image_size{ 0 };          // size of the raw bitmap data in bytes, 0 - uncompressed images
		int32_t h_pixels_per_meter{ 2835 }; // horizontal resolution of the image
		int32_t v_pixels_per_meter{ 2835 }; // vertical resolution of the image
		uint32_t colors_in_palette{ 0 };    // number of colors in the color palette. Use 0 for the max number of colors allowed by bit_count
		uint32_t important_colors{ 0 };     // number of important colors used, or 0 when every color is important; generally ignored
	};
#pragma pack(pop)

	struct ImageView {
		ImageView(int w, int h, int c, uint8_t* d) :
			width{ w }, height{ h }, channels{ c }, data{ d } {}
		int width{ 0 };
		int height{ 0 };
		int channels{ 0 };
		uint8_t* data{ nullptr };
	};

	struct ColorPalette {
		constexpr ColorPalette() : table{ 0 } {
			for (auto i = 1; i < 256; i++)
				table[i] = table[i - 1] + 0x00010101u;
		}
		uint32_t table[256];
	};

	class BMPMini
	{
	public:
		BMPMini(const std::string& filename) {
			read(filename);
		}
		BMPMini() = default;

		void read(const std::string& filename) {
			std::ifstream istrm(filename, std::ios::binary);
			if (!istrm) {
				throw std::ios::failure("Cannot open the input file: " + filename);
			}
			istrm.read(reinterpret_cast<char*>(&header), sizeof(BMPHeader));

			if (header.compression_method != 0 || header.colors_in_palette != 0) {
				throw std::invalid_argument("Only no compression is supported currently");
			}

			istrm.seekg(header.offset_data, std::ios::beg);
			int padded_row_size = paddedRowSize();
			int image_size = header.height * padded_row_size;
			std::vector< uint8_t> data(image_size);
			istrm.read(reinterpret_cast<char*>(data.data()), data.size());

			pixel_data.reserve((header.width * header.height * header.bit_per_pixel) / 8);
			for (int i = 0; i < header.height; i++) {
				auto k = header.height - 1 - i;
				auto ptr = reinterpret_cast<uint8_t*>(data.data()) + k * padded_row_size;
				pixel_data.insert(pixel_data.end(), ptr, ptr + (header.width * header.bit_per_pixel) / 8);
			}
			//std::cout << "Image Size: " << header.image_size << std::endl;

		}

		void getRGBChannels(unsigned char *R, unsigned char *G, unsigned char *B) {
			if (header.bit_per_pixel != 24) {
				throw std::runtime_error("RGB extraction is only valid for 24-bit images!");
			}

			int num_pixels = header.width * header.height;

			for (int i = 0; i < num_pixels; ++i) {
				B[i] = pixel_data[i * 3];     // BMP stores as BGR
				G[i] = pixel_data[i * 3 + 1];
				R[i] = pixel_data[i * 3 + 2];
			}
    	}

		void getGrayChannel(unsigned char *Gray) {
			if (header.bit_per_pixel != 8) {
				throw std::runtime_error("Grayscale extraction is only valid for 8-bit images!");
			}

			int num_pixels = header.width * header.height;

			for (int i = 0; i < num_pixels; ++i) {
				Gray[i] = pixel_data[i];
			}
		}
		

		void writeRGB(const std::string& filename, unsigned char *R,
			unsigned char *G, unsigned char *B,
			int width, int height) 
		{
			if (!R || !G || !B) {
				throw std::runtime_error("R, G, B pointers are null!");
			}

			int num_pixels = width * height;
			pixel_data.resize(num_pixels * 3);

			for (int i = 0; i < num_pixels; ++i) {
				pixel_data[i * 3] = B[i];     // BMP stores as BGR
				pixel_data[i * 3 + 1] = G[i];
				pixel_data[i * 3 + 2] = R[i];
			}
			// Update header with new width and height
			header.width = width;
			header.height = height;
			header.bit_per_pixel = 24;
			header.image_size = height * paddedRowSize();
			header.offset_data = sizeof(header);
			header.file_size = header.offset_data + header.image_size;
			// Save as BMP
			write(filename);
		}
		
		void writeGreyScale(const std::string& filename, unsigned char *Grey, int width, int height) 
		{
			if (!Grey) {
				throw std::runtime_error("Grey pointers are null!");
			}
			int num_pixels = width * height;
			pixel_data.resize(num_pixels);

			for (int i = 0; i < num_pixels; ++i) {
				pixel_data[i] = Grey[i];     // BMP stores as Grey
			}

			header.width = width;
			header.height = height;
			header.bit_per_pixel = 8;  // 8-bit grayscale
			header.image_size = height * paddedRowSize();
			header.offset_data = sizeof(header) + sizeof(ColorPalette);
			header.file_size = header.offset_data + header.image_size;
			
			write(filename);  // Save as BMP
		}


		void write(const std::string& filename) {
			// upside down and padding
			int padded_row_size = paddedRowSize();
			std::vector<uint8_t> image_data(header.image_size);
			int channels = header.bit_per_pixel / 8;
			for (int i = 0; i < header.height; i++) {
				auto k = header.height - 1 - i;
				auto ptr = &pixel_data[k * header.width * channels];
				std::copy(ptr, ptr + header.width * channels, &image_data[i * padded_row_size]);
			}

			std::ofstream ostrm{ filename, std::ios_base::binary };
			if (!ostrm) {
				throw std::runtime_error("Cannot open the output file: " + filename);
			}
			ostrm.write((const char*)&header, sizeof header);
			if (is8bit()) {
				constexpr ColorPalette color_palette;
				ostrm.write((const char*)color_palette.table, sizeof(ColorPalette));
			}
			ostrm.write((const char*)image_data.data(), image_data.size());
		}

		ImageView get() {
			return { header.width, header.height, header.bit_per_pixel / 8, pixel_data.data() };
		}

	private:
		bool is8bit() const { return header.bit_per_pixel == 8; }
		int paddedRowSize() const { return ((header.width * header.bit_per_pixel + 31) / 32) * 4; }
		BMPHeader header;
		std::vector<uint8_t> pixel_data;
	};
}