; construct a pair
(cons 1 2)
; => (1 . 2)

; is it a pair?
(pair? (1 . 2))
; => #t

; define and construct a list
(define my-list (cons 1 '(2 3)))
; => (1 2 3)

; is it a list?
(list? my-list)
; => #t

; list procedure
(list 1 2 3)
; => (1 2 3)

; define a new list
(define my-list (list 1 2 3 4 5))

; get the first element of the list using car.
(car my-list)
; => 1

; get the last elements of the list using cdr.
(cdr my-list)
; => (2 3 4 5)

; car and cdr can be combined to access different elements
(cdr (cdr my-list))
; => (3 4 5)

; it can also be written like this
(cddr my-list)
; => (3 4 5)

; another example
(car (cdr (cdr my-list)))
; => 3

; it can also be written like this
(caddr my-list)
; => 3

; get a specific element of a list.
(list-ref my-list 3)
; => 4

; get the tail of the list.
(list-tail my-list 3)
; => (4 5)

; append lists.
(append '(1 2) '(3 4 5))
; => (1 2 3 4 5)

