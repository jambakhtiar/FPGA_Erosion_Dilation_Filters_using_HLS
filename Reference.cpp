#include "Reference.h"

// 5x5 kernels for erosion and dilation
const bool erosion_kernel[5][5] = {
    {1, 0, 1, 0, 1},
    {0, 1, 1, 1, 0},
    {1, 1, 1, 1, 1},
    {0, 1, 1, 1, 0},
    {1, 0, 1, 0, 1}
};

const bool dilation_kernel[5][5] = {
    {0, 1, 0, 1, 0},
    {1, 1, 1, 1, 1},
    {0, 1, 1, 1, 0},
    {1, 1, 1, 1, 1},
    {0, 1, 0, 1, 0}
};

// Exposed mode values
#define MODE_EROSION 0
#define MODE_DILATION 1
#define MODE_EDGE 2

void Image_Function(int imINPUT[MAX_HEIGHT][MAX_WIDTH],
                              int imOUTPUT[MAX_HEIGHT][MAX_WIDTH],
                              int imHeight,
                              int imWidth,
                              int mode)  // <-- Mode now passed as argument
{
    // Temporary buffers
    unsigned char gray[MAX_HEIGHT][MAX_WIDTH];
    unsigned char eroded[MAX_HEIGHT][MAX_WIDTH] = {0};
    unsigned char dilated[MAX_HEIGHT][MAX_WIDTH] = {0};

    // variables for row and col loops        
//    int row_1, row_2, row_3, row_4;
  //  int col_1, col_2, col_3, col_4;

    // variables i and j loops for erosion and dilation
    //int i_2, i_3;
    //int j_2, j_3;


    // Step 1: Convert input to grayscale (extract only 8 LSBs)
    gray_row: for (int row = 0; row < imHeight; row++) {
        gray_col:for (int col = 0; col < imWidth; col++) {
            gray[row][col] = imINPUT[row][col] & 0xFF;
        }
    }

    // Step 2: Erosion
    eros_row:for (int row = 2; row < imHeight - 2; row++) {
        eros_col:for (int col = 2; col < imWidth - 2; col++) {
            unsigned char min_val = 255;
            step2_i:for (int i = 0; i < 5; i++) {
                step2_j:for (int j = 0; j < 5; j++) {

                    if (erosion_kernel[i][j]) {
                        unsigned char pixel = gray[row + i - 2][col + j - 2];
                        //pixel = gray[row + i - 2][col + j - 2];
                        if (pixel < min_val)
                            min_val = pixel;
                    }
                }
            }
            eroded[row][col] = min_val;
        }
    }

    // Step 3: Dilation
    dil_row:for (int row = 2; row < imHeight - 2; row++) {
        dil_col:for (int col = 2; col < imWidth - 2; col++) {
            unsigned char max_val = 0;
            step3_i:for (int i = 0; i < 5; i++) {
                step3_j:for (int j = 0; j < 5; j++) {
                    if (dilation_kernel[i][j]) {
                        unsigned char pixel = gray[row + i - 2][col + j - 2];
                        //pixel = gray[row + i - 2][col + j - 2];
                        if (pixel > max_val)
                            max_val = pixel;
                    }
                }
            }
            dilated[row][col] = max_val;
        }
    }

    // Step 4: Select output mode
    edge_row:for (int row = 0; row < imHeight; row++) {
        edge_col:for (int col = 0; col < imWidth; col++) {

            unsigned char out_pixel;
            
            if (mode == MODE_EROSION) 
                {
                    out_pixel = eroded[row][col];
                } 
            else if (mode == MODE_DILATION) 
                {
                    out_pixel = dilated[row][col];
                }
                 
            else if (mode == MODE_EDGE) 
                {
                    int diff = dilated[row][col] - eroded[row][col];
                    
                    out_pixel = (diff < 0) ? 0 : (diff > 255 ? 255 : diff);
                }
                 
            else 
                {
                    // Fallback to grayscale if mode is invalid
                    out_pixel = gray[row][col];
                }
            
            // Replicate grayscale pixel into 24-bit RGB (stored in 32-bit int)
            imOUTPUT[row][col] = out_pixel | (out_pixel << 8) | (out_pixel << 16);
        
            
        }
    }
    
    
}
