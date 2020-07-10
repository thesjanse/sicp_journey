#lang racket

(require rackunit)

(define (lucas-iter a b n)
    (if (= n 0)
        b
        (lucas-iter (+ a b)
                    a
                    (- n 1))))

(define (lucas n)
    (lucas-iter 1 2 n))

(check-eq? (lucas 0) 2)
(check-eq? (lucas 1) 1)
(check-eq? (lucas 2) 3)
(check-eq? (lucas 3) 4)
(check-eq? (lucas 4) 7)
(check-eq? (lucas 10) 123)
