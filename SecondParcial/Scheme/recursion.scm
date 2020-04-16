; Recursive in scheme

; Factorial function with integer validation
(define (factorial n)
    (cond
        [(not (integer? n)) (void)]
        [(< n 0) (void)]
        [(= n 1) 1]
        [else (* n (factorial (- n 1)))]
    )
)

(define (factorial n)
    (cond
        [(and (integer? n) (= n 1)) 1]
        [(and (integer? n) (> n 1)) (* n (factorial (- n 1)))]
    )
)

; comparation to see if return void
(equal? (factorial 0) (void))

; Factorial function with iterative process, n = number, r = result
(define (f-i n r)
    (cond
        [(= n 1) r]
        [else (f-i (- n 1) (* n r))]
    )
)

; another way to do factorial

(define (factorial n)
    (define (f-i i n r)
        (cond 
            [(= i n) r]
            [else (f-i (+ i 1) n (* i r))]
        )
    )
    (if (and (integer? n) (> n 0)) 
        (f-i 1 n 1)
    )
)

; fibonacci
(define (fibonacci n)
    (cond
        [(or (not (integer? n ))(< n 0)) `error]
        [(= n 0) 0]
        [(= n 1) 1]
        [else (+ (fib (- n 1))) (fib (- n 2)))]
    )
)

; fibonacci iterative

(define (fib-iterative n)
    (define (fib-i x y i n)
        (cond
            [(= i n) y]
            [#t (fib-i (+ x y) (+ i i) n)]
        )
    )
    (cond
        [(equal? n 0) 0]
        [(and (integer? n)) (>= n 1)) (fib-i 0 1 1 n)]
    )
)

(define L `(a b c d e))

; Count the elements of a list
(define (length lista)
    (cond 
        [(not (list? lista)) #f]
        [(null? lista) 0]
        [(pair? lista) (+ 1 (length (cdr lista)))]
    )
)

(define (count l)
  (cond
    [(null? l) 0]
    [(not (list?  l)) 1 ]
    [else
      (+
	(count (car l))
	(count (cdr l)))
    ]
  )
)

; Count the elements of a list iterative
(define (length2 lista)
    (define (length-i lista n)
        (cond
            [(null? lista) n]
            [(pair? lista) (length-i (cdr lista) (+ n 1))]
        )
    )
    (cond 
        [(not (list? lista)) #f]
        [#t (length-i lista 0)]
    )
)

; leap-year

(define (bisiesto year)
    (define (divisible? a b) 
        (cond
            [(= (mod a b) 0) #t]
            [#t #f]
        )
    )
    (cond
        [(or (not (integer? year)) (< year 0)) 'error]
        [(and (divisible? year 4) (not (divisible? year 100))) #t]
        [(divisible? year 400) #t]
        [#t #f]
    )
)

; What type of n is

(define (que-tipo-de-n-es n) 
    (cond
        [(not (number? n)) 'error]
        [(integer? n) 'entero]
        [(real? n) 'real]
        [(rational? n) 'racional]
        [(complex? n) 'complejo]
        [#t 'number]
    )
)

; list elements sum with validation

(define (listSum x)
  (cond
    [(not(list? x)) 'error]
    [(null? x) 0]
    [(not(number? (car x))) (+ 0 (listSum (cdr x)))]
    (else (+ (car x) (listSum (cdr x))))
  )
)