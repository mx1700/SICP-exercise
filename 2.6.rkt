#lang racket
(define zero
  (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define one
  (lambda (f) (lambda (x) (f x))))

(define two
  (lambda (f) (lambda (x) (f (f x)))))

(define (add a b)
  (lambda (f) (lambda (x) ((a f) ((b f) x)))))


(define f (lambda (x) (+ x 1)))

(display ((zero f) 0))
(newline)
(display ((one f) 0))
(newline)
(display ((two f) 0))
(newline)
(define v2 (add-1 one))
(display ((v2 f) 0))
(newline)
(display ((one f) ((one f) 0)))
(newline)
(display (((add one two)f)0))

