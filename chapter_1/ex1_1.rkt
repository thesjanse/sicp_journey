#lang racket


; 10
; result 10

; (+ 5 3 4)
; result 12

; (- 9 1)
; result 8

; (/ 6 2)
; result 3

; (+ (* 2 4) (- 4 6))
; result 6

; (define a 3)
; result a=3

; (define b (+ a 1))
; result b=4

; (+ a b (* a b))
; result 19

; (= a b)
; result #f false

; (if (and (> b a) (< b (* a b)))
;     b
;     a)
; result 4

; (cond ((= a 4) 6)
;       ((= b 4) (+ 6 7 a))
;       (else 25))
; result 16

; (+ 2 (if (> b a) b a))
; 6

; (* (cond ((> a b) a)
;          ((< a b) b)
;          (else -1))
;    (+ a 1))
; result 16
