% Prolog se compone de pregunas, hechos y reglas

humano(profe).
humano(profe).
edad(profe, 32).
gusta(profe, cafe, caliente).
gusta(profe, cafe, frape).

% Crear preguntas -> edad(x, 32), edad(X, Y), hombre(X), mujer(Y)

edad(profe, 32).
edad(cyndi, 31).

humano(profe).
humano(cyndi).

hombre(profe).
mujer(cindy).

% Bill likes icre-cream

likes(bill, ice-cream).
likes(ice-cream, bill).

% bill is tall

tall(bill).

% jane hits jimmy with the cricket bat

hits(jane, jimmy, "cricket bat").

% john travels to london by train

travels(john, london, "by train").

% bill takes jane some edam cheese

takes(bill, jane, "some edam cheese").

% freddy lives at 16 throgmorton street in lodon

lives(freddy, "16 throgmorton street", london).
lives(freddy, 16, throgmorton, london).

% consulta de datos

cuadrado(1, 1).
cuadrado(2, 4).
cuadrado(3, 9).
cuadrado(4, 16).

% hechos disyutivos, separados por un or
% biil only eats chocolate, bananas or cheese.

eats(biil, chocolate).
eats(biil, bananas).
eats(biil, cheese).

% the square root of 16 is 4 or -4

sqrt(16, 4).
sqrt(16, -4).

% wales, ireland and scotland are all contries.

country(wales).
country(ireland).
country(scotland).

% ejercicio 1:

hombre(alex).
hombre(paco).
hombre(fabian).
hombre(diego).

mujer(cyndi).
mujer(ana).
mujer(natalia).

humano(X) :- hombre(X).
humano(X) :- mujer(X).

% ejercicio 2:

persona(alex).
persona(paco).
persona(fabian).
persona(diego).
persona(cyndi).
persona(ana).
persona(natalia).

perro(fido).

macho(fido).
macho(alex).
macho(paco).
macho(fabian).
macho(diego).

hembra(cyndi).
hembra(ana).
hembra(natalia).

hombre(X) :- 
    persona(X),
    macho(X).

mujer(X) :- 
    persona(X),
    hembra(X).

servivo(X) :- persona(X).
servivo(X) :- perro(X).

servivoMacho(X) :- 
    servivo(X), 
    macho(X).

servivoHembra(X) :- 
    servivo(X),
    hembra(X).

% ejercicio 3:

persona(pam).
persona(tom).
persona(bob).
persona(liz).
persona(ann).
persona(pat).
persona(jim).

hombre(tom).
hombre(bob).
hombre(jim).

mujer(pam).
mujer(liz).
mujer(ann).
mujer(pat).

padres(pam, bob).
padres(tom, bob).
padres(tom, liz).
padres(bob, ann).
padres(bob, pat).
padres(pat, jim).

padre(X, Y) :- 
    padres(X, Y),
    hombre(X).

madre(X, Y) :- 
    padres(X, Y),
    mujer(X).

abuelos(X, Z) :-
    padres(X, Y),
    padres(Y, Z).

hamanos(Y1, Y2) :-
    padres(X, Y1),
    padres(X, Y2).