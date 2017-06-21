#lang racket
;(display (even? 2))

(define (same-parity list)
  (filter1 (cdr list) (if (even? (car list)) even? odd?)))

;尾递归
(define (filter list expr result)
  (if (null? list)
      result
      (if (expr (car list))
          (filter (cdr list) expr (cons (car list) result))
          (filter (cdr list) expr result))))

;普通尾递
(define (filter1 list expr)
  (if (null? list)
      null
      (if (expr (car list))
          (cons (car list) (filter1 (cdr list) expr))
          (filter1 (cdr list) expr))))

;test
(display (filter (list 1 2 3 4 5 6) even? null))
(display (filter1 (list 1 2 3 4 5 6) even?))
(display (same-parity (list 1 2 3 4 5 6)))
(display (same-parity (list 2 3 4 5 6)))