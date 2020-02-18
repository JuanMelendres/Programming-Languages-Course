# Claas Activity 01
#### Juan Antonio Melendres Villa 		A00369017 ####
Follow the instructions in the pdf Exercise_1 and upload your results here

Exercise 1
----------

1. First, open up a terminal and create a directory, when the we change to the new directory lab3:
	```
	➜  Class-Activity-01 ✗ mkdir lab3
	➜  Class-Activity-01 ✗ cd lab3
	```

2. Now open up an editor (for example geany, gedit, or scite) and write the following lines:
	```
	➜  Class-Activity-01 ✗ gedit problem_3.c &
	```
	**Code:**
	```
	#define Voltage 220
	#define current 10
	main()
	{
		float Resistor;
		Resistor = Voltage / current;
		printf("R = %6.2f \n", Resistor);
	}
	```

3. Precompile your created program by using the gcc command and the E option. With this option, only the preprocessor is activated:
	```
	➜  lab3 ✗ gcc -E problem_3.c -o problem_3_pre.c
	```

4. This will cause the preprocessed file to be written to the file “problem_3_pre.c “. View the file contents:

	**Preprocessed file:**
	```
	# 1 "problem_3.c"
	# 1 "<built-in>" 1
	# 1 "<built-in>" 3
	# 362 "<built-in>" 3
	# 1 "<command line>" 1
	# 1 "<built-in>" 2
	# 1 "problem_3.c" 2
	main()
	{
		float Resistor;
	 	Resistor = 220 / 10;
		printf("R = %6.2f \n", Resistor);
	}
	```

5. Difference between the two files:

	**problem_3.c:**
	```
	#define Voltage 220
	#define current 10
	main()
	{
		float Resistor;
		Resistor = Voltage / current;
		printf("R = %6.2f \n", Resistor);
	}
	```
	**problem_3_pre.c:**
	```
	# 1 "problem_3.c"
	# 1 "<built-in>" 1
	# 1 "<built-in>" 3
	# 362 "<built-in>" 3
	# 1 "<command line>" 1
	# 1 "<built-in>" 2
	# 1 "problem_3.c" 2
	main()
	{
		float Resistor;
	 	Resistor = 220 / 10;
		printf("R = %6.2f \n", Resistor);
	}
	```

6. Proceed to compile the program. You may either compile the precompiled file, or the original file:
	```
	➜  lab3 ✗ gcc problem_3.c / gcc problem_3_pre.c
	```

7. Error messages:
	```
	problem_3.c:5:1: warning: type specifier missing, defaults to 'int'
      [-Wimplicit-int]
		main()
		^
	problem_3.c:9:2: warning: implicitly declaring library function 'printf'
      with type 'int (const char *, ...)' [-Wimplicit-function-declaration]
        printf("R = %6.2f \n", Resistor);
        ^
	problem_3.c:9:2: note: include the header <stdio.h> or explicitly provide a
	      declaration for 'printf'
	2 warning generated.
	```

7. Debug Code:

	**Code:**
	```
	#define Voltage 220
	#define current 10
	#include <stdio.h>
	int main()
	{
		float Resistor;
		Resistor = Voltage / current;
		printf("R = %6.2f \n", Resistor);
	}
	```
	Printf is a function that needs to be defined before it can be used. Its definition is included in the stdio.h header file. Simply including this file before the main function should fix the problem.

8. Compile and run the program to see the result:
	```
	➜  lab3 ✗ gcc problem_3.c
	➜  lab3 git:(master) ✗ ./a.out 
	R =  22.00 
	```
	
Exercise 2
----------

1. Create problem_3b.c and paste this code:
	
	**Code:**
	```
	#define Voltage 5
	#include <stdio.h>
	float resistor_fun(float i)
	{
		float b;
		b = Voltage/i;
		return b;
	}
	main()
	{
		float Resistor, current;
		printf("Enter the current value: ");
		scanf("%f", &current);
		Resistor = resistor_fun(current);
		printf("\nThe required resistor should be ");
		printf("%1.0f Ohms.\n", Resistor);
	}
	```

2. Compile and run the executable program: 

	The name of the created program is "a.out". You may rename the program if you want.

	**Exmaple:**
	```
	gcc -o <name that you wnat> problem_3b.c 
	```
	**Compile**
	```
	gcc -o myprog problem_3b.c 
	```
	**Warning message:**  
	We can ignore the warning message.
	```
	problem_3b.c:11:1: warning: type specifier missing, defaults to 'int'
      [-Wimplicit-int]
	main()
	^
	1 warning generated.
	```
	**Run:**
	```
	➜  lab3 ✗ ./myprog                  
	Enter the current value: 10
	The required resistor should be 0 Ohms.
	```
	The "./a.out" or in this case the "./myprog". The "./" specifies that the program is in the current directory and not in the operating system predefined program places.

Exercise 3
----------

Now we are going to compile the above code again, but first we will separate it into smaller pieces. Place each function in a separate file.

1. Separate the code into smaller pieces:

	The first term extern specifies that the function is an external function. The second term float specifies that the return value of the function is of type float.

	**problem_3c1.c:**
	```
	#include <stdio.h>
	extern float resistor_fun(float);
	int main()
	{
		float Resistor, current;
		printf("Enter the current value: ");
		scanf("%f", &current);
		Resistor = resistor_fun(current);
		printf("The required resistor should be ");
		printf("%1.0f Ohms.\n", Resistor);
	}
	```
	**problem_3c2.c:**
	```
	#define Voltage 5
	float resistor_fun(float i)
	{
		float b;
		b = Voltage/i;
		return b;
	}
	```

2. Compile the two files one by one:
	```
	➜  lab3 ✗ gcc -c problem_3c1.c                 
	➜  lab3 ✗ gcc -c problem_3c2.c
	```

3. If no errors occur, then you should have obtained two object files, ls to see them:
	```
	➜  lab3 ✗ ls
	problem_3.c     problem_3b.c    problem_3c1.o   problem_3c2.o
	problem_3_pre.c problem_3c1.c   problem_3c2.c
	```

4. Now link them to a single program:
	```
	➜  lab3 ✗ gcc -o myprog problem_3c1.o problem_3c2.o
	```

5. Run the program:

	Make sure that the output is correct. For example, for a 1 amp current, the resistor value should be 5 Ohms.
	```
	➜  lab3 ✗ ./myprog
	Enter the current value: 1
	The required resistor should be 5 Ohms.
	```

Exercise 4
----------

1. Create the prog01.c file and paste this code:
	**prog01.c:**
	```
	#define BIGNUM 1000000
	#include <stdio.h>
	int main(void)
	{
		int a = BIGNUM;
		printf("Hello, world, I am %d happy units\n", a);
		return 0;
	}
	```

2. Compile the program with -c and see what happens? and why?:
	```
	➜  lab3 ✗ gcc -c prog01.c
	```

	It creates a new file call prog01.o, why because it compile or assemble the source files, but do not link.
	```
	➜  lab3 ✗ ls
	problem_3.c     problem_3c1.c   problem_3c2.o
	problem_3_pre.c problem_3c1.o   prog01.c
	problem_3b.c    problem_3c2.c   prog01.o
	```

3. Compile the program with -o and see what happens? and why?:
	```
	➜  lab3 ✗ gcc prog01.c -o prog
	```

	It creates a new file call prog, why because it is naming the file and whether it be an executable file.
	```
	➜  lab3 ✗ ls
	problem_3.c     problem_3c1.c   problem_3c2.o   prog01.o
	problem_3_pre.c problem_3c1.o   prog
	problem_3b.c    problem_3c2.c   prog01.c
	```

4. Create a complete set of files to perform a separated compilation:

	Assume we want to create a very simple library with two functions, to compute the maximum and the minimum of two integer numbers.
	So, we need to create two files for the library. One will contain only the declarations of the functions. 
	That one is going to be a header file, so the extension is going to be “.h”.

	First Create the library compare.h:

	**compare.h:**
	```
	int the_biggest(int x, int y);
	int the_smallest(int x, int y);
	```

	Then create a C program without main:

	**compare.c:**
	```
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
	```

5. We can compile this program and se what happens:
	```
	➜  lab3 ✗ gcc compare.c -o compare
	```

	We may have something like this:
	```
	Undefined symbols for architecture x86_64:
	  "_main", referenced from:
	     implicit entry/start for main executable
	ld: symbol(s) not found for architecture x86_64
	clang: error: linker command failed with exit code 1 (use -v to see invocation)
	```

6. Now compile like this and see what happens:
	```
	➜  lab3 ✗ gcc -c compare.c
	```

	We got a file named "compare.o" that is our target file for the library.
	```
	➜  lab3 ✗ ls
	compare.c       problem_3_pre.c problem_3c2.c   prog01.o
	compare.h       problem_3b.c    problem_3c2.o
	compare.o       problem_3c1.c   prog
	problem_3.c     problem_3c1.o   prog01.c
	```

7. Create a file with a main to test our library:

	**my_main.c**
	```
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
	```

8. Compile the program:
	```
	➜  lab3 ✗ gcc -c my_main.c
	```

	It creates new file call "my_main.o":
	```
	➜  lab3 ✗ ls
	compare.c       my_main.o       problem_3c1.c   prog
	compare.h       problem_3.c     problem_3c1.o   prog01.c
	compare.o       problem_3_pre.c problem_3c2.c   prog01.o
	my_main.c       problem_3b.c    problem_3c2.o
	```

9. Link all the programs into one executable:
	```
	➜  lab3 ✗ gcc my_main.o compare.o -o my_prog
	```

	It create our binary executable code named "my_prog":
	```
	➜  lab3 ✗ ls
	compare.c       my_main.o       problem_3b.c    problem_3c2.o
	compare.h       my_prog         problem_3c1.c   prog
	compare.o       problem_3.c     problem_3c1.o   prog01.c
	my_main.c       problem_3_pre.c problem_3c2.c   prog01.o
	```

10. Run the executable:
	```
	➜  lab3 ✗ ./my_prog 
	The biggest is: 10
	The smallest is: 4
	```