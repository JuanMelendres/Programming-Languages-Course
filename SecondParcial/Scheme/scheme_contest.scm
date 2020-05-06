; (cubo-VAP x). Suma del volumen, area y perímetro. 
(define (cubo-vap x)
    (+ (* x x x) (* x x 6) (* 12 x))
)

; (crea-Lista). Crear la lista ((5 (1 6) 2) 3 4) utilizando anidaciones de (cons) y asignarla a la variable lista.
(cons (cons 5 (cons (cons 1 (cons 6 '())) (cons 2 '()))) (cons 3 (cons 4 '())))

; Numero de elementos en una lista (1 2 3) => 3
(define (length lista)
    (cond
        [(and (not (null? lista))) 
            (cond 
                [(list? (car lista)) (+ (length (car lista)) (length (cdr lista)))]
                [#t (+ 1 (length (cdr lista)))]
        )]
        [#t 0]
    )
)

; (modulo a b). Valida que la entrada sea numérica. Si un valor no es numérico, 
; imprime "error-a-no-es-un-número" o "error-b-no-es-un-número". Valida que b no sea cero. 
; Si b es cero, imprime "error-b-es-cero". Si el módulo es cero, imprime "a-es-múltiplo-de-b". 
; Si a es igual que b, imprime "a-y-b-son-iguales".

(define (modulo a b)
    (if (not (number? a)) (display "error-a-no-es-un-numero")
        (if (not (number? b)) (display "error-b-no-es-un-numero")
            (cond
                [(= b 0) (display "error-b-es-cero")]
                [(= a b) (display "a-y-b-son-iguales")]
                [(= 0 (mod a b)) (display "a-es-multiplo-de-b")]
            )
        )
    )
)

; (diferencia a b c). Regresa la mayor diferencia de todos los pares ((a b) (b a) (a c) (c a) (b c) (c b)). 
; Si dos o más diferencias cumplen la regla, debe regresar "varias". 
; Debe usar (cond) no (if). No se permite asignación de valores.
; (diferencia 1 2 3) 2 => a-c

(define (diferencia a b c)
    (cond
        [(> (abs (- a b)) (abs (- a c)))
            (cond
            [(> (abs (- a b)) (abs (- b c)))
                (abs (- a b))
            ]
            [(< (abs (- a b)) (abs (- b c)))
                (abs (- b c))
            ]
            [else 'varias])
        ]
        [(< (abs (- a b)) (abs (- a c)))
            (cond
            [(> (abs (- a c)) (abs (- b c)))
                (abs (- a c))
            ]
            [(< (abs (- a c)) (abs (- b c)))
                (abs (- b c))
            ]
            [else 'varias])
        ]
        [else
            (cond
            [(> (abs (- a c)) (abs (- b c)))
                (abs (- a c))
            ]
            [(< (abs (- a c)) (abs (- b c)))
                (abs (- b c))
            ]
            [else 'varias])
        ]
    )
)

; (valor-lista n lista). Obtener el valor n de la variable lista. Validar parámetros. En error #f.

(define (valor-lista lista n)
    (define (len-lista lista)
        (if (pair? lista)( + 1 (len-lista (cdr lista)))0)
    )
    (if (integer? n) 
        (if (pair? lista)
            (if (< n 1) #f 
                (if (> n (len-lista lista)) #f 
                    (if (= n 1) (car lista) (valor-lista (cdr lista) (- n 1)))
                )
            )#f
        )#f
    )
)

; (icosaedro-AP x o). o = a -> área. o = p -> perímetro. o = ap -> suma del área y perímetro.

(define (icosaedro-AP x o)    
	(cond                                                                                 
		[(or (not (number? x)) (<= x 0)) 'error]                                       
	    [(equal? o 'p) (* 30 x)]                   
        [(equal? o 'a) (* 5 (sqrt  3) x x)]       
        [(equal? o 'ap) (+ (* 5 (sqrt 3)  x x) (* 30 x)) ]       
    ) 
)

; (operacion L1 L2 L3). Validar que L1, L2 y L3 sean listas, si no lo son, regresa #f. L1 y L2 
;contienen números. L3, contiene operadores. La función regresa una lista, con el resultado de 
; la operación (L3 L1 L2).

(define (len lista)
    (if (pair? lista) (+ 1 (len (cdr lista))) 0)
)

(define (operacion l1 l2 l3)
    (if (and (list? l1) (list? l2) (list? l3) (= (len l1) (len l2) (len l3)))
        (if (= (len l1) 0) '()
            (cons ((eval (car l3)) (car l1) (car l2)) (operacion (cdr l1) (cdr l2) (cdr l3)) )
        )
    #f
    )
)

; Reversa de una lista


(define (reverse lista)
    (define (aux lista r)
        (cond
            [(null? lista) r]
            [(aux (cdr lista) (cons (car lista) r ))]
        )
    )
    (cond
        [(not (list? lista)) #f]
        [(aux lista '())]
    )
)

; (valida-fecha d m)

(define (valida-fecha dia mes)
  (cond             
    [(not (integer? dia)) #f]
    [(not (integer? mes)) #f]                
    [(and (= mes 1) (> dia 0) (<= dia 31)) #t]       
    [(and (= mes 2) (> dia 0) (<= dia 28)) #t]           
    [(and (= mes 3) (> dia 0) (<= dia 31)) #t]      
    [(and (= mes 4) (> dia 0) (<= dia 30)) #t]       
    [(and (= mes 5) (> dia 0) (<= dia 31)) #t]   
    [(and (= mes 6) (> dia 0) (<= dia 30)) #t]          
    [(and (= mes 7) (> dia 0) (<= dia 31)) #t]   
    [(and (= mes 8) (> dia 0) (<= dia 31)) #t]    
    [(and (= mes 9) (> dia 0) (<= dia 30)) #t]        
    [(and (= mes 10) (> dia 0) (<= dia 31)) #t]      
    [(and (= mes 11) (> dia 0) (<= dia 30)) #t]   
    [(and (= mes 12) (> dia 0) (<= dia 31)) #t]  
    [#t #f]               
  )                                      
)

; (borra-elemento L E)

(define (borra-elemento lista e)
    (if (list? lista)
        (if (pair? lista)
            (if (= (car lista) e)
                (cons '$ (borra-elemento (cdr lista) e))
                (cons (car lista) (borra-elemento (cdr lista) e))
            )
        '())
    #f
    )
)

; (match L1 L2)  Devuelve lista de matches entre los tipos de elementos de las listas 
; (número, símbolo, booleano)
; L1 (1 2 a b #t)     L2 (1 x x b #f)    =>  (n   #f   s   s    b)

(define (match l1 l2)
    (define (longitud lista)
        (cond
            [(null? lista) 0]
            [(pair? lista) (+ 1 (longitud (cdr lista)))]
        )
    )
    (cond
        [(or (not(list? l1)) (not(list? l2))) 'error]
        [(not (= (longitud l1) (longitud l2))) 'error]
        [(= (longitud l1) 0) '()]
        [(and (number? (car l1)) (number? (car l2))) (cons 'n (match (cdr l1) (cdr l2)))]    
        [(and (boolean? (car l1)) (boolean? (car l2))) (cons 'b (match (cdr l1) (cdr l2)))]
        [(and (symbol? (car l1)) (symbol? (car l2))) (cons 's (match (cdr l1) (cdr l2)))]
        [else (cons #f (match (cdr l1) (cdr l2)))]
    )
)