#include <stdio.h>

// you can use sizeof() function to 
int main() 
{ 
	int a = 1; 
	char b ='G'; 
	double c = 3.14; 
    
	//printing the variables defined above along with their sizes 
	printf("I am a character. My value is %c and my size is %lu byte.\n", b, sizeof(char));
	//can use sizeof(b) above as well 

	printf("I am an integer. My value is %d and my size is %lu bytes.\n", a, sizeof(int));
	//can use sizeof(a) above as well 

	printf("I am a double variable and my value is %lf and my size is %lu bytes.\n",c, sizeof(double));
	//can use sizeof(c) above as well 

	printf("Bye! \nSee you soon. :)\n");

	return 0; 
} 

