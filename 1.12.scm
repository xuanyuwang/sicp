(define (f row col)
	(+ (f (- row 1) (- col 1)) (f (- row 1) col))
)

