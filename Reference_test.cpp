
///////////////////////////////////////////////////////////////////
#include <iostream>
#include <string>
#include <vector>
#include <cstdlib>  // For malloc & free
#include "BMPProcessor.h"
#include "Reference.h"
//#include "img_proc.h"
// I/O Image Path
#define INPUT_IMAGE_BASE  "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/project/src/lena_gray.bmp"
#define OUTPUT_IMAGE_BASE "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/project/src/edge_v0.bmp"

// Morphology Mode Selection
// 0 = Erosion, 1 = Dilation, 2 = Edge Detection
//#define MORPHOLOGY_MODE 0
//#define MORPHOLOGY_MODE 1
#define MORPHOLOGY_MODE 2

int in_pix[MAX_HEIGHT][MAX_WIDTH];
int out_pix[MAX_HEIGHT][MAX_WIDTH];

int main() {
    std::cout << "=======================================================" << std::endl;
    std::cout << "--------- Simulation started ---------" << std::endl << std::endl;

    // Load BMP
    image::BMPMini bmp(INPUT_IMAGE_BASE);
    auto img = bmp.get();

    int height = img.height;
    int width = img.width;
    int channels = img.channels;

    std::cout << " Image Height: " << height << std::endl;
    std::cout << " Image Width: " << width << std::endl;
    std::cout << " Channels: " << channels << std::endl;

    // For RGB images (24-bit)
    if (channels == 3) {
        std::cout << " Detected: RGB Image " << std::endl;

        // Allocate memory
        unsigned char *R = (unsigned char *)malloc(MAX_HEIGHT * MAX_WIDTH);
        unsigned char *G = (unsigned char *)malloc(MAX_HEIGHT * MAX_WIDTH);
        unsigned char *B = (unsigned char *)malloc(MAX_HEIGHT * MAX_WIDTH);

        if (!R || !G || !B) {
            std::cerr << "Memory allocation failed!" << std::endl;
            return -1;
        }

        bmp.getRGBChannels(R, G, B);

        // Pack RGB into input pixel buffer (store as BGR 24-bit in LSBs)
        for (int x = 0; x < height; x++) {
            for (int y = 0; y < width; y++) {
                in_pix[x][y] = (B[x * width + y] << 16) |
                               (G[x * width + y] << 8) |
                               (R[x * width + y]);
            }
        }

        // Call Top-Level Function
        Image_Function(in_pix, out_pix, height, width, MORPHOLOGY_MODE);

        // Unpack output back into RGB
        for (int x = 0; x < height; x++) {
            for (int y = 0; y < width; y++) {
                unsigned char val = out_pix[x][y] & 0xff;  // Grayscale value replicated across R/G/B
                R[x * width + y] = val;
                G[x * width + y] = val;
                B[x * width + y] = val;
            }
        }

        bmp.writeRGB(OUTPUT_IMAGE_BASE, R, G, B, width, height);
        std::cout << " Output RGB Image Written" << std::endl;

        free(R); free(G); free(B);
    }

    // For grayscale images (8-bit)
    else if (channels == 1) {
        std::cout << " Detected: 8-bit Grayscale Image " << std::endl;

        unsigned char *Grey = (unsigned char *)malloc(MAX_HEIGHT * MAX_WIDTH);
        bmp.getGrayChannel(Grey);

        for (int x = 0; x < height; x++) {
            for (int y = 0; y < width; y++) {
                in_pix[x][y] = Grey[x * width + y];
            }
        }

        Image_Function(in_pix, out_pix, height, width, MORPHOLOGY_MODE);

        for (int x = 0; x < height; x++) {
            for (int y = 0; y < width; y++) {
                Grey[x * width + y] = out_pix[x][y] & 0xff;
            }
        }

        bmp.writeGreyScale(OUTPUT_IMAGE_BASE, Grey, width, height);
        std::cout << " Output Grayscale Image Written" << std::endl;

        free(Grey);
    }

    else {
        std::cerr << "Unsupported image format!" << std::endl;
        return -1;
    }

    std::cout << std::endl << "--------- Simulation END ---------" << std::endl;
    std::cout << "=======================================================" << std::endl;
    return 0;
}
