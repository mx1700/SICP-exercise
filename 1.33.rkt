#lang racket

(define (filtered-accumulate combiner null-value filter? term a next b)
  (cond ((> a b) null-value)
        ((filter? a) (combiner (term a) (filtered-accumulate combiner null-value filter? term (next a) next b)))
        (else (filtered-accumulate combiner null-value filter? term (next a) next b))
        )
  )

(filtered-accumulate +
                     0
                     even?
                     (lambda (x) x)
                     1
                     (lambda (x) (+ x 1))
                     10
                     )