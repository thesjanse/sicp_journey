#lang racket
(require rackunit)

; A SquareRoot is a Number
; interpretation represents square root of a number

; Number -> SquareRoot
; compute square root of a given number
(define (sqrt x)

    (define (square x)
        (* x x))

    (define (average x y)
        (/ (+ x y) 2))

    (define (improve guess x)
        (average guess (/ x guess)))

    (define (good-enough? guess x)
        (= (improve guess x) guess))

    (define (sqrt-iter guess x)
        (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x)
                        x)))

    (sqrt-iter 1.0 x))

(sqrt 0.0001)
(sqrt 4)
(sqrt 0)
(sqrt 40000000000000000)
