; drum pattern generator

;tempo
(set-tempo '((0 0 140)))

;hi-hat patterns
(define hh-patterns
'(
  ((f#2 ab2 f#2 f#2) (Q Q Q Q))
  ((f#2 r f#2 r) (Q Q Q Q))
  ((f#2 r ab2 bb2) (Q Q Q Q))
  ((bb2 f#2 ab2 f#2) (Q Q Q Q))
  ((ab2 r f#2 r) (Q Q Q Q))
))

;snare drum patterns
(define sd-patterns
'(
  ((r d2 r d2) (Q Q Q Q))
  ((r d2 r r d2) (Q Q Q E E))
  ((r d2 r r r d2) (Q E E Q E E))
  ((r r d2 r d2) (Q E E Q Q))
  ((r d2 d2 r d2) (Q E E Q Q))
))

;bass drum patterns
(define bd-patterns
'(
  ((b1 r b1 r) (Q Q Q Q))
  ((b1 b1 r b1 r) (E E Q Q Q))
  ((b1 r b1 b1 r) (Q Q E E Q))
  ((b1 r r b1) (Q Q Q Q))
  ((b1 r r b1 b1 r) (Q Q Q E S S))
))

;generate a list of random numbers
(define (generate-seq l t) 
 (let loop ((n 0)) 
 (if (> n (- t 1)) '() 
 (cons (+ (+ (random-integer l) 1)) 
(loop (+ n 1)))))) 

;creates a list of the patterns
(define (create-pattern f p s)
 (if (null? s) '()
   (append (f (list-ref p (car s))) (create-pattern f p (cdr s)))))

;create a sequence of random numbers
(define bd-seq (generate-seq (- (length bd-patterns) 1) 16))
(define sd-seq (generate-seq (- (length sd-patterns) 1) 16))
(define hh-seq (generate-seq (- (length hh-patterns) 1) 16))

;snare
(define sn-p (create-pattern (lambda (x) (car x)) sd-patterns sd-seq))
(define sn-l (create-pattern (lambda (x) (cadr x)) sd-patterns sd-seq))
(define sn-v (constant-value (length sn-p) 96))
(define sn (create-events 0 (pitches->numbers sn-p) (lengths->numbers sn-l) sn-v 9))

;bass drum
(define bd-p (create-pattern (lambda (x) (car x)) bd-patterns bd-seq))
(define bd-l (create-pattern (lambda (x) (cadr x)) bd-patterns bd-seq))
(define bd-v (constant-value (length bd-l) 96))
(define bd (create-events 0 (pitches->numbers bd-p) (lengths->numbers bd-l) bd-v 9))

;hihats
(define hh-p (create-pattern (lambda (x) (car x)) hh-patterns hh-seq))
(define hh-l (create-pattern (lambda (x) (cadr x)) hh-patterns hh-seq))
(define hh-v (constant-value (length hh-l) 96))
(define hh (create-events 0 (pitches->numbers hh-p) (lengths->numbers hh-l) hh-v 9))

;save midi file
(save-midi (append sn bd hh))

