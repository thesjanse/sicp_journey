#lang racket
(require rackunit)

; CubicRoot is a Number
; interpretation CubicRoot of X is number multiplied to
; itself 3 times and equal to X

; Number -> Number
; compute the power of 3 of a number
(define (cube x)
    (* x x x))

(check-eq? (cube 3) 27)
(check-eq? (cube 2) 8)
(check-eq? (cube 0) 0)
(check-eq? (cube 1) 1)
(check-eq? (cube -2) -8)

; Number -> Number
; compute the square of a number
(define (square x)
    (* x x))

(check-eq? (square 2) 4)
(check-eq? (square 3) 9)
(check-eq? (square 0) 0)
(check-eq? (square 1) 1)
(check-eq? (square -2) 4)

; Number, Number -> Number
; approximate guess to the cube root of a number
(define (approximate guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(check-= (approximate 1.0 8) (/ (+ (/ 8 (square 1.0)) (* 2 1.0)) 3) 0.001)
(check-= (approximate 2.5 27) (/ (+ (/ 27 (square 2.5)) (* 2 2.5)) 3) 0.001)

; Number, Number -> Boolean
; check the guess for iteration stop
(define (good-enough? guess x)
    (= (approximate guess x) guess))

(check-eq? (good-enough? 3.0 27) #t)
(check-eq? (good-enough? 2.0 8) #t)
(check-eq? (good-enough? 1.0 1) #t)
(check-eq? (good-enough? 2.0 27) #f)

; Number, Number -> Number, Number
; iterate over guesses until the final guess is selected
(define (cube-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-iter (approximate guess x) x)))


; Number, Number -> CubicRoot
; calculate CubicRoot of a number
(define (cubic-root x)
    (cube-iter 1.0 x))

(check-= (cubic-root 27) 3.0 0.001)
(check-= (cubic-root 8) 2.0 0.001)
(check-= (cubic-root 1) 1.0 0.001)