#lang racket

(require rackunit)

(define (recursive-f n)
    (cond ((< n 3) n)
          (else (+ (recursive-f (- n 1))
                   (* 2 (recursive-f (- n 2)))
                   (* 3 (recursive-f (- n 3)))))))

(check-eq? (recursive-f -1) -1)
(check-eq? (recursive-f 0) 0)
(check-eq? (recursive-f 1) 1)
(check-eq? (recursive-f 2) 2)
(check-eq? (recursive-f 3) (+ (* 1 2) (* 2 1) 0))
(check-eq? (recursive-f 4) (+ (* 1 4) (* 2 2) (* 3 1)))