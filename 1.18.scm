(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (iter s a b)
	(cond ((= b 0) 0)
		  ((= b 1) (+ s a))
		  ((even? b) (iter s (double a) (halve b)))
		  ((odd? b) (iter (+ s a) (double a) (halve (- b 1)))))
)
(define (f a b)
	(iter 0 a b)
)
