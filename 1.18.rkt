#lang racket

(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (* a b t)
  (cond ((= b 0) (+ 0 t))
        ((= b 1) (+ a t))
        ((even? b) (* (double a) (halve b) t))
        (else (* a (- b 1) (+ a t)))
        )
  )

(* 11 23 0)