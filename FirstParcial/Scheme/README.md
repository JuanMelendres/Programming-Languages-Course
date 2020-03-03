Introduction to Scheme
======================

Operations always in preorder:

    Example:
    ```
    > (+ 1 2)
    3
    > (+ (+ 1 2) 3)
    6
    > (+ 1 2 3)
    6
    > (+ 1)
    1
    > (+1)
    +1
    ```

imaginary numbers (a+bi):

    Example:
    ```
    > 1+2i
    1+2i
    ```

exact to inexact numbers:

    Example:
    ```
    > (exact->inexact (/ 1 2))
    0.5
    > (* 1.0 (/ 1 2))
    0.5
    ```
create functions:

    Example:
    ```
    > (define pi 3.1416)
    > pi
    3.1416
    ```

    Example 2:
    ```
    > (define pi (* 4 (atan 1)))
    > pi
    3.141592653589793
    ```

    Example 3:
    ```
    > (define 2pi (* 2 pi))
    > 2pi
    6.283185307179586
    ```

    Example 4:
    ```
    > (define 2pi (* 2 pi))
    > 2pi
    6.283185307179586
    ```

    Example 5:
    ```
    > (define (fun)
        1
        2
        )
    > (fun)
    2
    ```

    Example 6:
    ```
    > (define (fun)
        (+ 1
        2)
        )
    > (fun)
    3
    ```

Cicle area of radius 2:
    
    Example:
    ```
    > (define acr2 (* pi 2 2))
    > acr2
    12.566370614359172
    ```

    Example 2:
    ```
    > (define acr2 (* pi (expt 2 2)))
    > acr2
    12.566370614359172
    ```

Create Functions with parameters:
    
    Example:
    ```
    > (define (suma a b)
        (+ a b)
        )
    > (suma 1 2)
    3
    ```

    Circle Area:
    ```
    > (define (aC r) (* pi (expt r 2)))
    > (aC 3)
    28.274333882308138
    ```

    Circle Perimeter:
    ```
    > (define (pC r) (* pi (* r 2)))
    > (pC 3)
    18.84955592153876
    ```