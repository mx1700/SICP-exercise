#lang racket

(define (f g) (g 2))

;(2 2)
(f f)
;最后执行 (2 2) 报错