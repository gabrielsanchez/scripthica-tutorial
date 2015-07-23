(define mynums '(1 2 3 4 5))

; map
(map (lambda (x) (* x x)) mynums)
; => (1 4 9 16 25)

(map + mynums (reverse mynums))
; => (6 6 6 6 6)

; for-each
(for-each display mynums)
; 1 2 3 4 5

; apply
(apply + mynums)
; => 15

; filter
(filter (lambda (x) (equal? x 1)) mynums)
; (1)

