#lang racket

(define (cube x)
  (* x x x))

(define (sum-cubes a b product)
  (if (> a b)
      product
      (sum-cubes (+ a 1)
                 b
                 (+ product (cube a))))
  )


(sum-cubes 1 3 0)

(define (sum term a next b product)
  (if (> a b)
      product
      (sum term
           (next a)
           next
           b
           (+ product (term a))
           )
      )
  )
