#include <stdio.h>

// function signature
// so the compiler knows the myFunction when it executes the main() function
int myFunction();

// main function
int main()
{
        printf("I\'m from the main function.\n");
        myFunction(); //call myFunction
        return 0;
}

// user defined function
int myFunction()
{
        printf("I\'m from the new function.\n");
        return 0;
}
