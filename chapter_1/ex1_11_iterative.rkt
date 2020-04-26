#lang racket

(require rackunit)

(define (iterative-f n)
    (if (< n 3)
        n
        (f-iter 2 1 0 n)))

(define (f-iter a b c count)
    (if (= (- count 2) 0)
        a
        (f-iter (+ a (* 2 b) (* 3 c))
                a
                b
                (- count 1))))

(check-eq? (iterative-f -1) -1)
(check-eq? (iterative-f 0) 0)
(check-eq? (iterative-f 1) 1)
(check-eq? (iterative-f 2) 2)
(check-eq? (iterative-f 3) (+ (* 1 2) (* 2 1) 0))
(check-eq? (iterative-f 4) (+ (* 1 4) (* 2 2) (* 3 1)))
(check-eq? (iterative-f 5) 25)
(check-eq? (iterative-f 6) 59)
(check-eq? (iterative-f 7) 142)
(check-eq? (iterative-f 8) 335)
(check-eq? (iterative-f 9) 796)
(check-eq? (iterative-f 10) 1892)
