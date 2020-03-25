# Class Activity 03

#### Juan Antonio Melendres Villa 		A00369017 ####

## Part one - page 22

### Calculate the following using Scheme interpreter

**1. (1+39) x (53-45) -> 320:**

```chez
(* (+ 1 39) (- 53 45))  -> 320
```

**2. (1020 / 39) + (45 * 2) -> 1510/13:**

```chez
(+ (/ 1020 39) (* 45 2))  -> 1510/13
```

**3. Sum of 39, 48, 72, 23, and 91 -> 273:**

```chez
(+ 39 48 72 23 91) -> 273
```

**4. Average of 39, 48, 72, 23, and 91 as a floating point -> 54.6:**

```chez
(/ (+ 39 48 72 23 91) 5.0) -> 54.6:
```

## Part two - page 25

### Calculate following values using Scheme interpreter

**1. circle pi:**

```chez
(* 4 (atan 1)) -> pi
```

**2. exp(2/3) -> 1.9477340410546757:**

```chez
(expt (/ 2 3)) -> 1.9477340410546757
```

**3. 3 to the power of 4 -> 81:**

```chez
(expt 3 4) -> 81
```

**4. logarithm of 1000 -> 6.907755278982137:**

```chez
(log 1000) -> 6.907755278982137
```

## Part three - page 38

The United States uses the English system of (length) measurements.
The rest of the world uses the metric system. So, people who travel abroad and companies that trade

1.Develop the functions inches->cm, feet->inches, yards->feet, rods->yards, furlongs->rods, and miles->furlongs.

```chez
a) inches->cm: (define (inchCm in) (* 2.54 in))
b) feet->inches: (define (feetInch ft) (* 12 ft))
c) yards->feet: (define (yardFoot yd) (* 3 yd))
d) rods->yards: (define (rodYard rd) (* 5.5 rd))
e) furlongs->rods: (define (furlongsRods fl) (* 40 fl))
f) miles->furlongs: (define (milesFurlongs mi) (* 8 mi))
g) miles->cm: (define (mileCm n) (mileFurlong (furlongRod (rodYard (yardFoot (feetInch (inchCm n)))))))
h) feet->cm: (define (feetCm ft) (inchCm (feetInch ft)))
```

## Part 4 - Examen Parcial 1

**1. Error:**

```chez
(define (sphere-volume r)
    (* (/ 4 3) 3.141592654)
    (* r r r)
)
```

**1. Good:**

```chez
(define (sphere-volume r)
    (* (/ 4 3) 3.141592654 r r r)
)
```

**2. Error:**

```chez
(define (next x)
    (x + 1)
)
```

**2. Good:**

```chez
(define (next x)
    (+ x  1)
)
```

**3. Error:**

```chez
(define (square)
    (* x x)
)
```

**3. Good:**

```chez
(define (square x)
    (* x x)
)
```

**4. Error:**

```chez
(define (triangle-area triangle)
    (* 0.5 base height)
)
```

**4. Good:**

```chez
(define (triangle-area triangle base height)
    (* 0.5 base height)
)
```

**5. Error:**

```chez
(define (sum-of-squares (square x) (square y))
    (+ (square x) (square y))
)
```

**5. Good:**

```chez
(define (square x)
    (* x x)
)
(define (sum-of-squares x y)
    (+ (square x) (square y))
)
```

## Part 5 - 39

**2. Develop the program volume-cylinder. It consumes the radius of a cylinder's base disk and its height;it computes the volume of the cylinder.**

```chez
(define pi (* 4 (atan 1)))
(define (volume-cylinder r h) (* pi h (* r r)))
```

**3. Develop area-cylinder. The program consumes the radius of the cylinder's base disk and its height. Its result is the surface area of the cylinder.**

```chez
(define pi (* 4 (atan 1)))
(define (area-cylinder r h) (* 2 pi r (+ r h)))
```

**4. Develop the function area-pipe. It computes the surface area of a pipe, which is an open cylinder. The program consumes three values: the pipe's inner radius, its length, and the thickness of its wall.**

```chez
(define pi (* 4 (atan 1)))
(define (area-pipe rad leng thick) (+ (* 2 (- (* pi (+ rad thick) (+ rad thick)) (* pi rad rad ))) (* 2 pi rad leng) (* 2 pi leng (+ rad thick))))
```

**5. Develop the program height, which computes the height that a rocket reaches in a given amount of time. If the rocket accelerates at a constant rate g, it reaches a speed of g x t in t time units and a height of 1/2 x v x t where v is the speed at t.**

```chez
(define G 9.8)
(define (speed t) (* G t))
(define (height t) (* t 0.5 (speed t)))
```

## Part 5 - 52 - 53

1.What is the value of

```chez
(define (exeone n)
    (cond
        [(<= n 1000) .040]
        [(<= n 5000) .045]
        [(<= n 10000) .055]
        [(> n 10000) .060]
    )
)
```

when n is (a) 500, (b) 2800, and (c) 15000?

a) 500 = 0.04
b) 2800 = 0.045
c) 15000 = 0.06

2.What is the value of

```chez
(define (exetwo n)
    (cond
        [(<= n 1000) (* .040 1000)]
        [(<= n 5000) (+ (* 1000 .040) (* (- n 1000) .045))]
        [else (+ (* 1000 .040) (* 4000 .045) (* (- n 10000) .055))]
    )
)
```

when n is (a) 500, (b) 2800, and (c) 15000?

a) 500 = 40.0
b) 2800 = 121.0
c) 15000 = 495.0

## Part 6 - 58

Some credit card companies pay back a small portion of the charges a customer makes over a year. One company returns:

1. 0.25% for the first $500 of charges,
2. 0.50% for the next $1000 (that is, the portion between $500 and $1500),
3. 0.75% for the next $1000 (that is, the portion between $1500 and $2500),
4. and 1.0% for everything above $2500.

Thus, a customer who charges $400 a year receives $1.00, which is 0.25 x 1/100 x 400, and one who charges $1,400 a year receives $5.75, which is 1.25 = 0.25 x 1/100 x 500 for the first $500 and 0.50 x 1/100 x 900 = 4.50 for the next $900.
Determine by hand the pay-backs for a customer who charged $2000 and one who charged $2600.
Define the function pay-back, which consumes a charge amount and computes the corresponding pay-back amount.

```chez
(define (payback charge)
    (cond
        [(<= charge 500) (* charge (/ 0.25 100))]
        [(and (> charge 500) (<= charge 1500)) (+ 1.25 (* (- charge 500) (/ 0.50 100)))]
        [(and (> charge 1500) (<= charge 2500)) (+ 1.25 5 (* (- charge 1500) (/ 0.75 100)))]
        [else (+ 1.25 5 7.5 (* (- charge 2500) (/ 1.0 100)))]
    )
)
```

a) $2000 = (1.25 + 5 + (2000 - 1500) * (0.75/100)) = (1.25 + 5 + 3.75) = 10

a) $2000 = 10.0

b) $2600 = (1.25 + 5 + 7.5 + (2600 - 2500) * (1.0/100)) = (1.25 + 5 + 7.5 + 1) = 14.75

b) $2600 = 14.75
