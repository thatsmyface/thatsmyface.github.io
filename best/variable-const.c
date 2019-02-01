#include<stdio.h>

// define constants (global)
#define val  10
#define floatVal  4.5
#define charVal 'G'

// global constants
const int NUMBER = 10;

int main()
{
    // local const variables
    const float PI = 3.14;
    
    printf("Integer Constant: %d\n", val);
    printf("Floating point Constant: %f\n", floatVal);
    printf("Character Constant: %c\n", charVal);
    
    printf("NUMBER: %d\n", NUMBER);
    printf("PI: %f\n", PI);
    
    return 0;
}
