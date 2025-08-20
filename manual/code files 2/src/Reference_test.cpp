// Reference_test.cpp
#include <iostream>
#include <string>
#include <vector>
#include <cstdlib>  // For malloc & free
#include "BMPProcessor.h"
#include "Reference.h"

// I/O Image Path
#define INPUT_IMAGE_BASE  "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/project/lena.bmp" //digit_ThreeCh  // digit_SingleCh
#define OUTPUT_IMAGE_BASE "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/project/out.bmp"


int in_pix[MAX_HEIGHT][MAX_WIDTH];
int out_pix[MAX_HEIGHT][MAX_WIDTH];

int main() {
    std::cout << "=======================================================" << std::endl;
    std::cout << "--------- Simulation satrted ---------" << std::endl<< std::endl;
    // Load BMP
    image::BMPMini bmp(INPUT_IMAGE_BASE);
    auto img = bmp.get();
    
    int height = img.height;
    int width = img.width;
    int channels = img.channels;

    int imSize = height * width; 

    std::cout << " Image Height: " << img.height << std::endl;
    std::cout << " Image Width: " << img.width << std::endl;
    std::cout << " Channels: " << img.channels << std::endl;

    /************ RGB images if (channels == 3) **************************************************/
    if (channels == 3) {
        std::cout << " Its an RGB Image " << std::endl;
        // For RGB images
        unsigned char *R = (unsigned char *)malloc(MAX_HEIGHT* MAX_WIDTH * sizeof(unsigned char)); 
        unsigned char *G = (unsigned char *)malloc(MAX_HEIGHT* MAX_WIDTH * sizeof(unsigned char));
        unsigned char *B = (unsigned char *)malloc(MAX_HEIGHT* MAX_WIDTH * sizeof(unsigned char)); 

        if (!R || !G || !B) {
            std::cerr << "Memory allocation failed!" << std::endl;
            return -1;
        }

        bmp.getRGBChannels(R, G, B);

        for (int x = 0; x < height; x++) {
            for (int y = 0; y < width; y++) {
                in_pix[x][y] = (B[x * width + y] << 16) + 
                               (G[x * width + y] << 8) + 
                               R[x * width + y];
            }
        }
        
  
	/***************************************************************************************************/
        // Your Top-Level Function will come here - For RGB images
        Reference_Image_Function(in_pix, out_pix, height, width);  // Its an Image Negation function
	/***************************************************************************************************/
	

        // Copy Output video pixel stream to Output Image data structure
        for (int x = 0; x < height; x++) {
            for (int y = 0; y < width; y++) {
                R[x * width + y] = out_pix[x][y] & 0xff;
                G[x * width + y] = (out_pix[x][y] >> 8) & 0xff;
                B[x * width + y] = (out_pix[x][y] >> 16) & 0xff;
            }
        }

        // Write the modified image
        bmp.writeRGB(OUTPUT_IMAGE_BASE, R, G, B, width, height);
        std::cout << " RGB Image Written " << std::endl;

        // Free allocated memory
        free(R);
        free(G);
        free(B);
    } 
    
    
     /************ GreyScale images if (channels == 1) **************************************************/   
    else if (channels == 1) {
        std::cout << " Its an 8-Bit Greyscale Image " << std::endl;
        // For grayscale images
        unsigned char *Grey = (unsigned char *)malloc(MAX_HEIGHT* MAX_WIDTH * sizeof(unsigned char));
        bmp.getGrayChannel(Grey);

        for (int x = 0; x < height; x++) {
            for (int y = 0; y < width; y++) {
                in_pix[x][y] = Grey[x * width + y];
            }
        }

	/***************************************************************************************************/
        // Your Top-Level Function will come here - For GreyScale images
        Reference_Image_Function(in_pix, out_pix, height, width);  // Its an Image Negation function
	/***************************************************************************************************/

        // Copy Output video pixel stream to Output Image data structure
        for (int x = 0; x < height; x++) {
            for (int y = 0; y < width; y++) {
                Grey[x * width + y] = out_pix[x][y] & 0xff;
            }
        }

        bmp.writeGreyScale(OUTPUT_IMAGE_BASE, Grey, width, height);
        std::cout << " 8-Bit GreyScale Image Written " << std::endl;

        // Free allocated memory
        free(Grey);

    } 
    else {
        std::cerr << "Unsupported image format!" << std::endl;
        return -1;
    }

    std::cout << std::endl<< "--------- Simulation END ---------" << std::endl;
    std::cout << "=======================================================" << std::endl;
    return 0;
}
