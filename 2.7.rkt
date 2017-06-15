#lang racket
(define (make-interval a b) (cons a b))

(define (upper-bound a)
  (max (car a) (cdr a)))

(define (lower-bound a)
  (min (car a) (cdr a)))

(define (add-interval a b)
  (make-interval (+ (lower-bound a) (lower-bound b))
                 (+ (upper-bound a) (upper-bound b) ) ))

(define (mul-interval a b)
  (let ((p1 (* (lower-bound a) (lower-bound b) ))
        (p2 (* (lower-bound a) (upper-bound b) ))
        (p3 (* (upper-bound a) (lower-bound b) ))
        (p4 (* (upper-bound a) (upper-bound b) )) )
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4) )))

(define (div-interval a b)
  (mul-interval a
                (make-interval (/ 1.0 (upper-bound b))
                               (/ 1.0 (lower-bound b)) ) ))

;help
(define (pl a)
  (display a)
  (newline))

(define (print-interval a)
  (display (lower-bound a))
  (display ",")
  (display (upper-bound a))
  (newline)
  )

;test
(define i (make-interval 2 1))
(pl (upper-bound i))
(pl (lower-bound i))

(print-interval (add-interval (make-interval 1 2)
                              (make-interval 4 3)))

(print-interval (mul-interval (make-interval 1 2)
                              (make-interval 4 3)))

(print-interval (div-interval (make-interval 1 2)
                              (make-interval 4 3)))

