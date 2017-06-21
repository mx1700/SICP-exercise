#lang racket
;2.25
(define a (list 1 3 (list 5 7) 9))
(car (cdr (car (cdr (cdr a)))))

(define b (list (list 7)))
(car (car b))

(define c (list 1 (list 2 (list 3 (list 4 7)))))
(car (cdr (car (cdr (car (cdr (car (cdr c))))))))

;2.26
(define x (list 1 2 3))
(define y (list 4 5 6))
(append x y)
(cons x y)
(list x y)

;2.27
(define (reverse list result)
  (if (null? list)
      result
      (reverse (cdr list) (cons (car list) result) )))

(define (map proc list)
  (if (null? list)
      null
      (cons (proc (car list))
            (map proc (cdr list)) )))

(define (deep-reverse tree)
  ;(display tree)
  (cond ((null? tree) tree)
        ((not (pair? tree)) tree)
        (else (map deep-reverse (reverse tree null)))))

(deep-reverse (list 1 2 3))
(deep-reverse (list 1 (list 5 6 7 (list 8 9)) 3))
