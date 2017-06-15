#lang racket
(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (x y) x)))

(define (cdr z)
  (z (lambda (x y) y)))

;test
(define c1 (cons 1 2))
(display (car c1))
(newline)
(display (cdr c1))