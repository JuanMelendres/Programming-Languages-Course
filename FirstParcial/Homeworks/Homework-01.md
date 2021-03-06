# Class Homework 01
#### Juan Antonio Melendres Villa 		A00369017 ####

Answer the following questions:

1.1 Errors in a computer program can be classified according to when they are detected and, if they are detected at compile time, 
what part of the compiler detects them. Using your favorite imperative language, give an example of each of the following.

	language -> Java

	(a) A lexical error, detected by the scanner:
		String 1sentence = "Hello World!"; - string beginning with a number. 

	(b) A syntax error, detected by the parser:
		if (number = 200); - Using "=" when "==" is needed.
		int x = 5 - missing semicolon.

	(c) A static semantic error, detected by semantic analysis:
		int a = "hello"; - types String and int are not compatible

	(d) A dynamic semantic error, detected by code generated by the compiler:
		int[] array = new int[10]; 
		array[10] = 100; - array index out of range, range between 0 and 9.

	(e) An error that the compiler can neither catch nor easily generate code to catch 
	(this should be a violation of the language definition, not just a program bug):
		int x; - This is unreachable, a compile-time error
		if (false) { 
			x = 2;
			System.out.println("Hey"); 
		}

1.5 In your local implementation of C, what is the limit on the size of integers? What happens in the event of arithmetic overflow? 
What are the implications of size limits on the portability of programs from one machine/compiler to another? 
How do the answers to these questions differ for Java? For Ada? For Pascal? For Scheme? (You may need to find a manual.)
	
	a) The range is -32767 to 32767 for int and depends on compiler options.

	b) exceeds the memory space designated to hold it. Example: In the case of 
	an artihmetic overflow for unsigned ints, the value "wraps around". 

	c) It would depends on the architecture of the computer and the available 
	space of memory that haves.

	d) For java, the range of an integer is from -2,147,483,648 to 2,147,483,647.
		For Ada, the range of an integer includes the range -2^15+1 to +2^15-1.

1.6 The Unix make utility allows the programmer to specify dependences among the separately compiled pieces of a program. 
If file A depends on file B and file B is modified, make deduces that A must be recompiled, in case any of the changes to B 
would affect the code produced for A. How accurate is this sort of dependence management? Under what circumstances will it 
lead to unnecessary work? Under what circumstances will it fail to recompile something that needs to be recompiled?
	
	File A depends on File B, and if File B is modified then there will be 
	change in File A. Since, there is achange in File A, it should be recompiled. 
	acording to dependency, both are files are accurate. Because if one is modified 
	another file is also modified and is recompiled. So, maximum dependency occurs 
	between the files A & B.

1.7 Why is it difficult to tell whether a program is correct? How do you go about finding bugs in your code? 
What kinds of bugs are revealed by testing? What kinds of bugs are not? (For more formal notions of program correctness, 
see the bibliographic notes at the end of Chapter 4.)
	
	You have to check for lexical, syntax, semantic and more errors that could happen 
	at running time. This is difficult since there are many cases to review in order 
	to say where an error might exist. To find bugs in my code, what I do after seeing 
	the errors is to make a list with the errors. Then I go error by mistake to fix 
	each one until. I solve them. Normally the test cases only show some error cases, 
	they will not show you all the errors. Some of them are functional, error handling, 
	communications, syntactic and more. I think that when you are testing, you try and 
	think what a user is likely to do. So, you make test cases for every possible way 
	a user might use the software. However, depending on how complex the software is. 
	But some bugs are environment sensitive. It could change from one device to 
	another device.

