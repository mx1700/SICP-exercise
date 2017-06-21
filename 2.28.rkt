#lang racket
(define (fringe tree)
  (cond ((null? tree) tree)
        ((not (pair? tree)) (list tree))
        (else (append (fringe (car tree)) (fringe (cdr tree))))))

(fringe (list (list 1 2) 3 4 5 (list 6 (list 7 8) 9)))