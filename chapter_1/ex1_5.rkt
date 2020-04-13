#lang racket

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; let's rewrite sqrt iter with applicative evaluation in mind
(sqrt 9)
(sqrt-iter 1.0 9)


(new-if (good-enough? 1.0 9)
        1.0
        (sqrt-iter (improve 1.0 9)
        9))
; applicative order expands the arguments first
; before the operator
; new if is not a special form
; sqrt-iter will end in infinite loop
