#lang racket

(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (* a b)
  (cond ((= b 0) 0)
        ((= b 1) a)
        ((even? b) (* (double a) (halve b)))
        (else (+ (* a (- b 1)) a))
        )
  )

(* 20 21)