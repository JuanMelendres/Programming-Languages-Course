(define lista 10)

; Quote function for symbolic values
(quote lista)

`(1 2 3 4 5 #t a ()) ; List and we can have sublist
`(1 2 3 4 5 #t a (((a))))

; Cons fuction for construct list in recursive form
(cons 1 `())
(cons 1 `(2))
(cons #t `(2))
(cons `t `(2))

(cons  `(1) `(2))

(define lista (cons 1 (cons 2 (cons (cons `a (cons `b () ) ) (cons (#t (cons `() `())) lista)))))

(cons 1 (cons 2 (cons (cons `a (cons `b `())) (cons (cons #t (cons `() `())) `()))))

(cons 1 (cons 2 (cons (cons lista (cons `b `())) (cons (cons #t (cons `() `())) `()))))

(define lista (cons 1 (cons 2 (cons (cons lista (cons `b `())) (cons (cons #t (cons `() `())) `())))))

(define lista `(1 2 (a b) (#t ())))

(cdr lista) ; complement of the list, needs one element to extract in the list

(car lista) ; fierts element of the list

(cons 1 `())

(define lista2 `(1 2 3))

(cdr lista2)

; Another example (1 a (#t) ())

(define lista3 (cons 1 (cons `a (cons (cons #t `()) (cons `() `() )))))

(car (car (cdr (cdr lista3))))

(define letras2 `(a (b (c (d (e)))))) 

; find e using car y cdr

(car (car (cdr (car (cdr (car (cdr (car (cdr letras2)))))))))