#lang racket

(define spend 1.5)
(define overhead 0)

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(define (revenue ticket-price)
  (* (attendees ticket-price)
     ticket-price))

(define (cost ticket-price)
  (+ (* spend (attendees ticket-price))
   overhead))

(define (attendees ticket-price)
  (+ 120
     (* (- 5 ticket-price) 15 10)))
   
     