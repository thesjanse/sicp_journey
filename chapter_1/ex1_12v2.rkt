#lang racket

(require rackunit)

(define (pascal row col)
    (if (or (= row col) (= col 0))
          1
          (+ (pascal (- row 1) (- col 1))
             (pascal (- row 1) col))))

(check-eq? (pascal 0 0) 1)
(check-eq? (pascal 1 1) 1)
(check-eq? (pascal 2 1) 2)
(check-eq? (pascal 4 2) 6)