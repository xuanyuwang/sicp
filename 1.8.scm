(define (square x) (* x x))
(define (good-enough? x y)
  (< (abs (- y x)) 0.001)
)
(define (improve guess x)
  (/ (/ (+ (* 2 guess) (/ x (* guess guess)))) 3)
)
(define (new-sqrt-iter new-guess x old-guess)
  (if (good-enough? new-guess old-guess)
	  new-guess
	  (new-sqrt-iter (improve new-guess x) x new-guess)
  )
)
(define (sqrt-iter guess x)
  (new-sqrt-iter guess x (improve guess x))
)
(print (sqrt-iter 1 2))
