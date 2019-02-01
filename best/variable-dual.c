#include <stdio.h>

// you can define same variable name as global and local but DO NOT DO IT!
int number = 2;

// access the global variable and prints it
void printNumber()
{
    number = number + 5;
    //print global variable
    printf("Number: %d \n", number);
}

int main()
{
    // local variable only visible inside the main() function
    int number = 1;
    
    number = number + 2;
    
    //print local variable
    printf("Number: %d \n", number);
    
    printNumber();
    
    return 0;
}
