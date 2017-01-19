#lang racket

(define (fast-expt b n product)
  (cond ((= n 0) product)
        ((= n 1) (* b product))
        (else (fast-expt b (- n 2) (* b b product)))
        )
  )

(fast-expt 5 13 1)