#lang racket

;2.17
(define (last-pair list)
  (if (null? (cdr list))
      list
      (last-pair (cdr list))))

;2.18
(define (reverse list result)
  (if (null? list)
      result
      (reverse (cdr list) (cons (car list) result) )))

;test
(display (last-pair (list 1 2 3)))
(display (reverse (list 1 2 3) null))
