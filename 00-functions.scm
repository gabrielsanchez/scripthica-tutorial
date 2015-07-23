
; this function takes a name and displays it in an alert
(define (hello name)
    (alert (string-append "hello " name)))

; another way to define functions is using a lambda
(define hello (lambda (name)
    (alert (string-append "hello " name))))

; To call the function, we simply type the name of the function
; and put a parameter in it:
(hello "Mrs. Stranger")

