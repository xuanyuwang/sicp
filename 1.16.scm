(define (iter a b n)
  (cond
	((= n 0) a)
	((= n 1) (* a b))
	((even? n) (iter a (* b b) (/ n 2)))
	((odd? n) (iter (* a b) (* b b) (/ (- n 1) 2)))
  )
)
(define (f b n)
  (iter 1 b n)
)
