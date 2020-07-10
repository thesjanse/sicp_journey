#lang racket

(require rackunit)

(define (lucas n)
    (cond [(= n 0) 2]
          [(= n 1) 1]
          [(> n 1) (+ (lucas (- n 1))
                      (lucas (- n 2)))]))

(check-eq? (lucas 0) 2)
(check-eq? (lucas 1) 1)
(check-eq? (lucas 2) 3)
(check-eq? (lucas 3) 4)
(check-eq? (lucas 4) 7)
(check-eq? (lucas 10) 123)
