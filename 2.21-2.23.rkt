#lang racket
(define (map proc list)
  (if (null? list)
      null
      (cons (proc (car list))
            (map proc (cdr list)) )))

(define (square-list items)
  (if (null? items)
      null
      (cons (* (car items) (car items))
            (square-list (cdr items)))))

(define (square-list1 items)
  (map (lambda (x) (* x x)) items))

(define (for-each proc items)
  (if (null? items)
      null
      (begin (proc (car items))
       (for-each proc (cdr items)))))


;test
(display (map abs (list -1 -2 1 2)))
(display (square-list (list 1 2 3 4)))
(display (square-list1 (list 1 2 3 4)))
(newline)
(for-each (lambda (x) (display (* x x))) (list 1 2 3 -1))