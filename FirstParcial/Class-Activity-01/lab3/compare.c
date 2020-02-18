/*
	This is my first libray in C !

	This file contains the declarations of the functions of my library
*/

int the_biggest(int x, int y)
{
	if (x > y)
		return x;
	else
		return y;
}

int the_smallest(int x, int y)
{
	if (x < y)
		return x;
	else
		return y;
}