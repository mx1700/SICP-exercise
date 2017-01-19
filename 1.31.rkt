#lang racket

(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))
      )
  )

(define (product-iter term a next b result)
  (if (> a b)
      result
      (product-iter term (next a) next b
               (* (term a) result))
      )
  )

(define (pi-trem x)
  (if (even? x)
      (/ x (+ x 1))
      (/ (+ x 1) x)
      )
  )

(define (pi-next a)
  (+ a 1))

(* (product pi-trem 2 pi-next 10000) 4.0)
(* (product-iter pi-trem 2 pi-next 10000 1) 4.0)
(* (product-iter pi-trem 2 pi-next 100000 1) 4.0)
