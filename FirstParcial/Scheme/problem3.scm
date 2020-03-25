;;; Develop the function area-pipe. It computes the surface area of a pipe, which is an open cylinder. 
;;; The program consumes three values: the pipe's inner radius, its length, and the thickness of its wall.

(define pi (* 4 (atan 1)))
(define (area-pipe rad leng thick) (+ (* 2 (- (* pi (+ rad thick) (+ rad thick)) (* pi rad rad ))) (* 2 pi rad leng) (* 2 pi leng (+ rad thick))))