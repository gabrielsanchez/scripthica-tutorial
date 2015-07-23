; musical hello world!
(define hello (string->list "Hello World!"))

(define (hw l)
 (if (null? l) '()
 (cons (char->integer (car l)) (hw (cdr l)))))

;pitches
(define p (hw hello))
;durations
(define l (constant-value (length p) 1000))
;velocities
(define v (constant-value (length p) 96))

(save-midi(create-events 0 p l v 1))

