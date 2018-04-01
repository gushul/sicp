#lang racket
(require rackunit)

(define (bigger-sum x y z )
  (cond ((and (< x z) (< x y)) (+ z y))
        ((and (< y x) (< y z)) (+ x z))
        (else (+ x y)))
  )

(check-equal? (bigger-sum 1 2 3) 5)
(check-equal? (bigger-sum 2 2 2) 4)
(check-equal? (bigger-sum 2 9 2) 11)
(check-equal? (bigger-sum 2 9 9) 18)