/*
	My first code in C that uses my library
*/

/*
	Instructions starting with pound (#) are preprocessor commands
*/

#include <stdio.h>
#include "compare.h"

int main(void)
{
	int a = 10;
	int b = 4;

	printf("The biggest is: %d\n", the_biggest(a,b));

	printf("The smallest is: %d\n", the_smallest(a,b));

	return 0;
}