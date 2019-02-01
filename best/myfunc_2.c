#include <stdio.h>

// user defined function before the main() function
// so the compiler knows the myFunction when it executes the main() function
int myFunction()
{
        printf("I\'m from the new function.\n");
        return 0;
}

// main function
int main()
{
        printf("I\'m from the main function.\n");
        myFunction(); //call myFunction
        return 0;
}
