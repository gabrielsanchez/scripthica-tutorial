; vector can be created with the make-vector function.
(make-vector 3 "hola")
; => #("hola" "hola" "hola")

; get a specific element of a vector.
(vector-ref #(1 2 3) 1)
; => 2

; get the length of a vector.
(vector-length #(1 2 3 4 5))
; => 5

