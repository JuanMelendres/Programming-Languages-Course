;;; Conditionals

(cond 
    [#f 1] ;;; It´s flase, is logic condicion (True or false)
    [(< 1 2) (+ 2)]
    [(= 1 2) 3]
)

(define (abs x)
    (cond 
        [(> x 0) x]
        [(< x 0) (- x)]
        [(= x 0) 0]
    )
)

(define (abs x)
    (cond 
        [(> x 0) x]
        [(< x 0) (- x)]
        [else 0]
    )
)

(define (abs x)
    (cond 
        [(> x 0) x]
        [(< x 0) (- x)]
        [#t 0]
    )
)

(define (mayor a b)
    (cond 
        [(< a b) b]
        [(> a b) a]
        [else a]
    )
)

(if (> 1 0) #t #f)

(if (< 1 0) 1 2)

(if (> 1 0) (mayor 1 0) 2)

(if (< 1 0) (mayor 1 5) 2)

(define (mayor a b)
    (if (> a b) a)
)

(if (predicate) 
    ((if (predicate)
        consequent
        alternative)) 
    ()
)

;;; For square roots
(sqrt 4)
(sqrt 9)

(define (!= a b)
    (not (= a b))
)

(and #t (> 1 0))

(and #t #f)

(or #t #f)

(define (exeone n)
    (cond
        [(<= n 1000) .040]
        [(<= n 5000) .045]
        [(<= n 10000) .055]
        [(> n 10000) .060]
    )
)

(define (exetwo n)
    (cond
        [(<= n 1000) (* .040 1000)]
        [(<= n 5000) (+ (* 1000 .040) (* (- n 1000) .045))]
        [else (+ (* 1000 .040) (* 4000 .045) (* (- n 10000) .055))]
    )
)

(define (payback charge)
    (cond
        [(<= charge 500) (* charge (/ 0.25 100))]
        [(and (> charge 500) (<= charge 1500)) (+ 1.25 (* (- charge 500) (/ 0.50 100)))]
        [(and (> charge 1500) (<= charge 2500)) (+ 1.25 5 (* (- charge 1500) (/ 0.75 100)))]
        [else (+ 1.25 5 7.5 (* (- charge 2500) (/ 1.0 100)))]
    )
)