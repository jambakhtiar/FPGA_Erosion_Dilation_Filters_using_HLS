// Image_Function_Reference.cpp

#include "Reference.h"

// Top function
void Reference_Image_Function(int imINPUT[MAX_HEIGHT][MAX_WIDTH], int imOUTPUT[MAX_HEIGHT][MAX_WIDTH], int imHeight, int imWidth)
{
  //Place the 32-bit = 4 grayscale pixels
  int row;
  int col;

  unsigned char temp_pixel[4];

  L0:for(row = 0; row < imHeight; row++){
    L1:for(col = 0; col < imWidth; col++){

    	temp_pixel[0] = 255-((imINPUT[row][col])& 0xff);
    	temp_pixel[1] = 255-(((imINPUT[row][col])& 0xff00)>>8);
    	temp_pixel[2] = 255-(((imINPUT[row][col])& 0xff0000)>>16);
    	temp_pixel[3] = 255-(((imINPUT[row][col])& 0xff000000)>>24);

    	imOUTPUT[row][col] = (temp_pixel[3]<<24) + (temp_pixel[2]<<16) + (temp_pixel[1]<<8) + (temp_pixel[0]);

    }
  }
}

