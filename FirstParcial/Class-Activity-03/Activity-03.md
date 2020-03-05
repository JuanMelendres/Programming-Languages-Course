# Class Activity 03
#### Juan Antonio Melendres Villa 		A00369017 ####

Part one - page 22
------------------

Calculate the following using Scheme interpreter: 
    1. *(1+39) x (53-45) -> 320:*
    ```
    (* (+ 1 39) (- 53 45))  -> 320
    ```
    2. *(1020 / 39) + (45 * 2) -> 1510/13:*
    ```
    (+ (/ 1020 39) (* 45 2))  -> 1510/13
    ```
    3. *Sum of 39, 48, 72, 23, and 91 -> 273:*
    ```
    (+ 39 48 72 23 91) -> 273
    ```
    4. *Average of 39, 48, 72, 23, and 91 as a floating point -> 54.6:*
    ```
    (/ (+ 39 48 72 23 91) 5.0) -> 54.6:
    ```

Part two - page 25
------------------

Calculate following values using Scheme interpreter:
    1. *circle pi:*
    ```
    (* 4 (atan 1)) -> pi
    ```
    2. *exp(2/3) -> 1.9477340410546757:*
    ```
    (exp (/ 2 3)) -> 1.9477340410546757
    ```
    3. *3 to the power of 4 -> 81:*
    ```
    (expt 3 4) -> 81
    ```
    4. *logarithm of 1000 -> 6.907755278982137:*
    ```
    (log 1000) -> 6.907755278982137
    ```

Part three - page 38
--------------------

The United States uses the English system of (length) measurements. 
The rest of the world uses the metric system. So, people who travel abroad and companies that trade 

1. Develop the functions inches->cm, feet->inches, yards->feet, rods->yards, furlongs->rods, and miles->furlongs.
```
    a) inches->cm: (define (inchCm in) (* 2.54 in))
    b) feet->inches: (define (feetInch ft) (* 12 ft))
    c) yards->feet: (define (yardFoot yd) (* 3 yd))
    d) rods->yards: (define (rodYard rd) (* 5.5 rd))
    e) furlongs->rods: (define (furlongsRods fl) (* 40 fl))
    f) miles->furlongs: (define (milesFurlongs mi) (* 8 mi))
    g) miles->cm: (define (mileCm n) (mileFurlong (furlongRod (rodYard (yardFoot (feetInch (inchCm n)))))))
    h) feet->cm: (define (feetCm ft) (inchCm (feetInch ft)))
```
2. Develop the program volume-cylinder. It consumes the radius of a cylinder's base disk and its height; 
it computes the volume of the cylinder.
```
(define pi (* 4 (atan 1)))
(define (volume-cylinder r h) (* pi h (* r 2)))
```
3. Develop area-cylinder. The program consumes the radius of the cylinder's base disk and its height. 
Its result is the surface area of the cylinder.
```
(define pi (* 4 (atan 1)))
(define (area-cylinder r h) (* 2 pi r (+ r h)))
```
4. Develop the function area-pipe. It computes the surface area of a pipe, which is an open cylinder. 
The program consumes three values: the pipe's inner radius, its length, and the thickness of its wall.
```
(define pi (* 4 (atan 1)))
(define (area-pipe r l t) (* 2 pi l (+ r t)))
```
5. Develop the program height, which computes the height that a rocket reaches in a given amount of time. 
If the rocket accelerates at a constant rate g, it reaches a speed of g * t in t time units and a height 
of 1/2 * v * t where v is the speed at t.
```
(define G 9.8)
(define (speed t) (* G t))
(define (height t) (* t 0.5 (speed t)))
```