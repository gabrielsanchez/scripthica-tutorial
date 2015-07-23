;if 4 is less than 3 return "4 is less than 3"
;else, return "4 is greater than 3"
(if (< 4 3) 
    "4 is less than 3"
    "4 is greater than 3")

; cond example
(define (cond-ex x y)
    (cond ((= x y) "x equals y")
          ((< x y) "x is less than y")
          (else "x is greater than y"))) 

(cond-ex 3 2)
; => "x is greater than y"

(cond-ex 3 3)
; =>"x equals y"

(cond-ex 2 3)
; => "x is less than y"

