% This program is for recursive fuctions.

% Factorial function

% base case (if)
factorial(1, 1).

factorial(1, Y):-
    Y is 1.

% recursive case (else)
factorial(X, Y):-
    X > 1,
    X2 is X - 1,
    factorial(X2, Y2),
    Y is X * Y2.

% Fibonacci function

% base case (if)
fibonacci(1, 1).
fibonacci(2, 1).

% recursive case (else)
fibonacci(X, Y):-
    X > 2,
    X2 is X - 1,
    X3 is X - 2,
    fibonacci(X2, A),
    fibonacci(X3, B),
    Y is A + B.

% Power function

% Base case
% _ any number, 0 is pow to 0, 1 the result
potencia(_, 0, 1).

potencia(X, Y, Z):-
    X =\= 0,
    Y = 0,
    Z is 1.

potencia(X, 1, X).

potencia(X, 1, Z):-
    Z is X.

potencia(X, Y, Z):-
    Y = 1,
    Z is X.

% Recursive case
%% X any number, Y is pow to n, Z the result
potencia(X, Y, Z):-
    Y > 0,
    Y2 is Y - 1,
    potencia(X, Y2, N),
    Z is X * N.

% car and cdr

car([H|_], H).

cdr([_|T], T).

primero([H|_], H).
segundo([_|[H2|_]], H2).
tercero([_, _, H2|_], H2).

% length of a list

% Base case
long([], 0).

% Recursive case
long([_|L] , R):-
	long(L, R1),
	R is R1 + 1.

% Find an element of a list given a index

% Base case
elementAt([H|_], 1, H).

% Recursive case
elementAt([_|T], X, R):-
    X > 1,
    X2 is X - 1,
    elementAt(X2, T, R).

