#lang racket

(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (make-segment start end) (cons start end))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

(define (midpoint-segment s)
  (let (
        (start (start-segment s))
        (end (end-segment s))
        )
    (make-point (/ (+ (x-point start) (x-point end)) 2)
                (/ (+ (y-point start) (y-point end)) 2))
    ))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

;rect
(define (make-rect p1 p2) (cons p1 p2))

;test
(define p1 (make-point 1 1))
(define p2 (make-point 2 3))
(print-point p1)
(define s1 (make-segment p1 p2))
(print-point (midpoint-segment s1))