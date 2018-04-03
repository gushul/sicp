#lang racket
(require rackunit)

(define (recursive_func n)
  (cond ((< n 3) n)
        ( else ( + (recursive_func ( - n 1)) (recursive_func ( - n 2)) (recursive_func ( - n 3))))
  )
)
  

(check-equal? (recursive_func 3) 3) 
(check-equal? (recursive_func 2) 2) 
(check-equal? (recursive_func 5) 11) 