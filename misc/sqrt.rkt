#lang racket


(define (sqrt x)
    (define (average a b)
        (/ (+ a b) 2))

    (define (improve guess)
        (average guess (/ x guess)))

    (define (good-enough? guess)
        (= (improve guess) guess))

    (define (sqrt-iter guess)
        (if (good-enough? guess)
            guess
            (sqrt-iter (improve guess))))

    (sqrt-iter 1.0))


(sqrt 9)