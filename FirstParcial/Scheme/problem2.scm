;;; Develop area-cylinder. The program consumes the radius of the cylinder's base disk and its height. 
;;; Its result is the surface area of the cylinder.

(define pi (* 4 (atan 1)))
(define (area-cylinder r h) (* 2 pi r (+ r h)))