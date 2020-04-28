#lang racket

(require rackunit)

; compute pascal triangle by row and element index

; Row is Number (positive integer)
; represents row index of a pascal triangle
; starts from 0

; Column is Number (positive integer)
; represents column index of a pascal triangle
; starts from 0

; compute factorial of a number
(define (factorial n)
    (define (fact-iter n result)
        (if (< n 2)
            result
            (fact-iter (- n 1) (* n result))))
    (fact-iter n 1))

(check-eq? (factorial 0) 1)
(check-eq? (factorial 1) 1)
(check-eq? (factorial 2) 2)
(check-eq? (factorial 3) 6)
(check-eq? (factorial 4) 24)
(check-eq? (factorial 7) 5040)

; compute the value of an element of a pascal triangle
(define (pascal r c)
    (/ (factorial r)
       (* (factorial c)
          (factorial (- r c)))))

(check-eq? (pascal 0 0) 1)
(check-eq? (pascal 1 1) 1)
(check-eq? (pascal 2 1) 2)
(check-eq? (pascal 4 2) 6)