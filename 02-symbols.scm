; To test if a variable is a symbol, we can use the symbol? predicate. 
; If the variable is a symbol, the procedure returns \#t.
(symbol? 'hello)
; => #t

; To convert a symbol to a string, use the symbol->string procedure.
(symbol->string 'hello)
; => "hello"

; To convert a string to a symbol, use the string->symbol procedure.
(string->symbol "hello")
; => hello

