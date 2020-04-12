#lang racket
(require rackunit)

; Define a procedure that takes three numbers as arguments and
; returns the sum of the squares of the two larger numbers. 

; Number -> Number
; compute square of the given number
(define (square x)
    (* x x))

; test square
(check-eq? (square 2) 4)
(check-eq? (square 5) 25)
(check-eq? (square 0) 0)
(check-eq? (square -2) 4)

; Number, Number -> Number
; compute sum of the squares of two numbers
(define (sum-of-squares x y)
    (+ (square x) (square y)))

; test sum-of-squares
(check-eq? (sum-of-squares 2 2) 8)
(check-eq? (sum-of-squares 0 2) 4)
(check-eq? (sum-of-squares -2 2) 8)
(check-eq? (sum-of-squares 5 5) 50)
(check-eq? (sum-of-squares 10 5) 125)

; Number Number Number -> Number
; select two largest numbers and compute sum of their squares
(define (main a b c)
    (cond ((and (<= a b) (<= a c)) (sum-of-squares b c))
          ((and (<= b a) (<= b c)) (sum-of-squares a c))
          (else (sum-of-squares a b))))

(check-eq? (main 1 2 3) 13)
(check-eq? (main 3 0 2) 13)
(check-eq? (main 0 3 2) 13)
(check-eq? (main 3 2 1) 13)
(check-eq? (main -2 0 1) 1)
(check-eq? (main 0 0 0) 0)
(check-eq? (main 1 1 2) 5)
