#lang racket

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* (f (- n 2)) 2)
                 (* (f (- n 3)) 3)))
    )
  )


(define (f1 n i a1 a2 a3)
  (define cur (cond ((< i 3) i)
                    (else (+ a1 (* 2 a2) (* 3 a3))))
    )
  (cond ((= i n) cur)
        (else (f1 n
                  (+ i 1)
                  cur
                  a1
                  a2
                  )
              )
        )
  )

(f 5)
(f1 5 1 0 0 0)