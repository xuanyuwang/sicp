(define (f-recur n)
  (cond ((< n 3) n)
		(
		 else (+ (f-recur (- n 1)) (* 2 (f-recur (- n 2))) (* 3 (f-recur (- n 3))))
		)
	)
)

(define (f-helper n a b c)
  (if (= n 2)
	  c
	  (f-helper (- n 1) b c (+ c (* 2 b) (* 3 a)))
	)
  )
(define (f-iter n)
	(cond ((< n 3) n)
		  (
		   	else (f-helper n 0 1 2)
		)
	)
)
