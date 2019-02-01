#include <stdio.h>

void printArea();

// Global Variable declaration
float area;

int main()
{
    // Local Variable declaration
    float radius =20;
    
    // Compute area
    area = radius * radius * 3.14159;
    
    //call print function
    printArea();
    
    return 0;
}

// void keywird says there is nothing to return
// this function access the global variable area and prints its content
void printArea()
{
    ///print global variable
    printf("The area is %f \n", area);
}
