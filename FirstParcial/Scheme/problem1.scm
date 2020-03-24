;;; Develop the program volume-cylinder. It consumes the radius of a cylinder's base disk and its height 
;;; it computes the volume of the cylinder.

(define pi (* 4 (atan 1)))
(define (volume-cylinder r h) (* pi h (* r r)))