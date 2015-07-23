; To test if a variable is a string, we can use the string? predicate. 
; If the variable is a string, the procedure returns \#t.
(string? "hello")
; => #t

; To find the length of a string use the string-length procedure:
(string-length "hello")
; => 5

; To append a sequence of strings use the string-append procedure:
(string-append "hello" " " "world!")
; => "hello world!"

; The string-ref procedure returns a character for a given position:
(string-ref "hello" 1)
; => #\e

; The substring procedure returns an inner sequence of a string:
(substring "hello" 2 4)
; => "ll"

; To convert a string to a list of characters:
(string->list "hello")
; => (#\h #\e #\l #\l #\o)


; To make a new copy of a string use the string-copy procedure:
(string-copy "hello")
; => "hello"

