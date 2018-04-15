#lang racket
(require rackunit)

(define (pascal_number x y)
  (cond ((= x 1) 1)
        ((= x y) 1)
        (else (+ (pascal_number (+ x 1) (- y 1)) (pascal_number x (- y 1))))
  )
)

(check-equal? (pascal_number 1 1) 1)
(check-equal? (pascal_number 3 3) 1)
(check-equal? (pascal_number 3 2) 2)
(check-equal? (pascal_number 3 5) 6)
(check-equal? (pascal_number 2 5) 4)