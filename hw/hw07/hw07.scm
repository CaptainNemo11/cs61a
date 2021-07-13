(define (cddr s) (cdr (cdr s)))

(define (cadr s) 'YOUR-CODE-HERE (car (cdr s)))

(define (caddr s) 'YOUR-CODE-HERE (car (cddr s)))

(define (sign num)
  'YOUR-CODE-HERE
  (cond 
    ((> num 0)      1)
    ((equal? num 0) 0)
    ((< num 0)      -1)
  )
)

(define (square x) (* x x))

(define (pow x y)
  (cond 
    ((equal? y 1)
     x
    )
    ((equal? y 0)
     1
    )
    ((even? y)
     (square (pow x (quotient y 2)))
    )
    ((odd? y)
     (* x (square (pow x (quotient y 2))))
    )
  )
)

(define (unique s)
  (define (equalx_y x)
    (define (equal_x y) (not (equal? x y)))
    equal_x
  )
  (if (null? s)
      ()
      (cons (car s)
            (unique (filter (equalx_y (car s)) (cdr s)))
      )
  )
)

(define (replicate x n) 
    (define (replicate_tail x n already_append)
        (if (equal? 0 n) already_append
            (replicate_tail x (- n 1) (append already_append (list x) ))
            )
    )
(replicate_tail x n ())
)


(define (accumulate combiner start n term)
  'YOUR-CODE-HERE
  (define (without_start n term)
      (if (equal? n 1)
          (term n)
          (combiner (without_start (- n 1) term) (term n))
      )
  )
   (combiner start (without_start n term))
)

(define (accumulate-tail combiner start n term)
  'YOUR-CODE-HERE
  (if (equal? n 0)
      start
      (accumulate-tail combiner (combiner start (term n)) (- n 1) term)
      )
)

(define-macro
 (list-of map-expr for var in lst if filter-expr)
 'YOUR-CODE-HERE
)
