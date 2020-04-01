(define (funA L1 L2)
    (if (and (pair? L1) (pair? L2)) 
        (if (or (and (number? (carL1)) (number? (carL2)))
            (and (boolean? (carL1)) (boolean? (carL2)))
            (and (symbol? (carL1)) (symbol? (carL2)))
            (and (list? (carL1)) (list? (carL2))))
            #t
            #f
        )
        `error
    ) 
)

(define (funA L1 L2)
    (cond 
        [(and (pair? L1) (pair? L2)) ( or
            (and (number? (carL1)) (number? (carL2)))
            (and (boolean? (carL1)) (boolean? (carL2)))
            (and (symbol? (carL1)) (symbol? (carL2)))
            (and (list? (carL1)) (list? (carL2)))
        )]
        [#t `error]
    )
)

(funA `() `())
(funA `(1) `(a))

(equal? 1 2)

(equal? `() `())

(equal? `(1 2 3) `(1 2 3))

(equal? `(1 2 3) `(1 2 3 4))

(equal? `(1 2 3 (4 5)) `(1 2 3 (4 5)))

(equal? `(1 2 3 (4 5)) `(1 2 3 (4 5 6)))

(define (val-len L)
    (cond 
       [(not (pair? L)) #f]
       [(not (pair? (cdr L))) #f]
       [(not (pair? (cdr (cdr L)))) #f]
       [(not (pair? (cdr (cdr (cdr L))))) #t]
       [else #f]
    )
)

(val-len 1)

(val-len `(1 2))

(val-len `(1 2 3))

(val-len `(1 2 3 4))

(define (val-elem L)
    (if (val-len L)
        (if (and 
                (number? (car L) )
                (number? (car (cdr L)))
                (number? (car (cdr (cdr L))))
            )
            #t
            #f
        )
        #f
    )
)

(define (mayor lista)
    (if (val-elem lista)
    )
)

(eval (+ 1 1))

(define L `((+ 1 2) (- 3 4) (* 5 6)))

(eval (car L))

(eval (car (cdr L)))

(eval (car (cdr (cdr L))))

(define L `(define (square x) (* x x)))

(define (fun)
    (if #f 1)
)

(define (void? x)
    (equal? x (void))
)

(void? fun)