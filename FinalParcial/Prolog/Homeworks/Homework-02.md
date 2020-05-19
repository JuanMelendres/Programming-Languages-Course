# Class Homework 02

#### Juan Antonio Melendres Villa 		A00369017 ####

## Prolog Exercises

For each of these problems, the aim is to define a predicate using few clauses. Each of the problems is a list processing problem. Complete 10 of the 20 exercises (List of exercises: 3, 4, 5, 6, 7, 8, 9, 10, 16 & 18).

3.Write a predicate head/2 which takes a list as its first argument and returns the head of the list as its second argument. It should fail if there is no first element.

```prolog
% We only want the Head of the list.
% This function help us to return only the Head.

head([H|_], H).

% When we run this program we obtain the head of the list.
% Example: head([a, b, c, d, e], R) -> R = a
```

4.Write a predicate tail/2 which takes a list as its first argument and returns the tail of the list as its second argument. It should fail if there is no first element.

```prolog
% We only want the Tail of the list.
% This function help us to return only the Tail.

tail([_|T], T).

% When we run this program we obtain the Tail of the list.
% Example: tail([a, b, c, d, e], R) -> R = [b, c, d, e]
```

5.Write a predicate last/2 which takes a list as its first argument and returns the last element of the list.

```prolog
% We only want the last element of the list.
% This function help us to return only the last element.

last([H|T], L) :-
    lasts(T, H, L).

lasts([], L, L).
lasts([H|T], _, L) :-
    lasts(T, H, L).

% When we run this program we obtain the last element of the list.
% Example: last([a, b, c, d, e], R) -> R = e
```

6.Write a predicate max/3 which takes three arguments, the first two are positive integer numbers and returns in the third the max of them.

```prolog
% This function return the max between two numbers.

max(X, Y, R) :-
    X > Y,
    R is X.

max(X, Y, R) :-
    Y > X,
    R is Y.

% When we run this program we obtain the max between two numbers.
% Example: max(3, 5, R) -> R = 5
% Example: max(2, 1, R) -> R = 2
```

7 Write a predicate fact/2 which takes a natural number as first argument, and returns the factorial of the number.

```prolog
% This function return the factorial of a number.
% base case (if)
fact(0, 1).
fact(1, 1).

% recursive case (else)
fact(X, Y):-
    X > 1,
    X2 is X - 1,
    fact(X2, Y2),
    Y is X * Y2.

% When we run this program we obtain the factorial of a number.
% Example: fact(5, R) -> R = 120
```

8.Write a predicate fib/2 which takes a natural number as first argument, and returns the value of the Fibonacci sequence for that position (counting from 1).

```prolog
% This function return the Fibonacci of a number.
% base case (if)
fib(0, 0).
fib(1, 1).

% recursive case (else)
fib(N, R):-
        N > 1,
        N1 is N - 1,
        fib(N1, R1),
        N2 is N - 2,
        fib(N2, R2),
        R is R1 + R2.

% When we run this program we obtain the Fibonacci of a number.
% Example: fib(5, R) -> R = 5
```

9.Write a predicate length2/2 which takes a list as first argument, and returns in the second one the number of elements in the list.

```prolog
% This function return the length of a List.
% base case (if)
length2([], 0).

% recursive case (else)
length2([_|L] , R) :-
        length2(L, R1),
        R is R1 + 1.

% When we run this program we obtain the length of a List.
% Example: length2([a, b, c, d, e], R) -> R = 5
```

10.Write a predicate power/3 which takes a number as first argument, a natural number as second argument and returns the first number to the power of the second.

```prolog
% This function return the power of a number.
% base case (if)
power(_, 0, 1).

% recursive case (else)
power(A, N, R) :-
    N > 0,
    N1 is N - 1,
    power(A, N1, R1),
    R is R1 * A.

% When we run this program we obtain the power of a number.
% Example: power(2, 2, R) -> R = 4
```

16.Define sum/2 to take a list of integers as input and return the output as their sum.

```prolog
% This function return the sum of a list of integers.
% base case (if)
sum([], 0).

% recursive case (else)
sum([H|T], R):-
    sum(T, R1),
    R is H + R1.

% When we run this program we obtain the sum of a list of integers.
% Example: sum([1, 2, 3], R) -> R = 6
```

18.Write a predicate dupli/2 which takes two inputs: the first is a list, and the second will be the list with every element duplicated.

```prolog
% This function return a duplicate list with a duplicate item.
% base case (if)
dupli([], []).

% recursive case (else)
dupli([H|T], [H,H|T1]):-
    dupli(T, T1).

% When we run this program we obtain a duplicate list with a duplicate item.
% Example: dupli([1, 2, 3], R) -> R = R = [1, 1, 2, 2, 3, 3]
```
