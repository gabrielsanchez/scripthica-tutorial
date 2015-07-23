;; Terry Riley: IN C
;; coded by Gabriel Sanchez

(set-tempo '((0 0 160)))
(set-instruments '((0 0 2) (1 0 6) (2 0 46) (3 0 8) (4 0 1) (5 0 0)))

(define cells '((0 (C4 E4 C4 E4 C4 E4) (E E E E E E))(1 (C4 E4 F4 E4)(E E E Q))(2 (R E4 F4 E4)(E E E E))(3 (R E4 F4 G4)(E E E E))(4 (E4 F4 G4 R)(E E E E))(5 (C5)(DW))(6 (R R R R C4 C4 C4 R R R R R)(Q Q Q E S S E E Q Q Q Q))(7 (G4 F4)(W. DW))(8 (B4 G4 R R R R)(S S E Q Q Q))(9 (B4 G4)(S S))(10 (F4 G4 B4 G4 B4 G4)(S S S S S S))(11 (F4 G4 B4 C5)(E E W Q))(12 (B4 G4 G4 F4 G4 R G4)(S E. S S E E. S+H.))(13 (C5 B4 G4 F#4)(W W W W))(14 (G4 R R R R)(S E. Q Q Q))(15 (G4 B4 C5 B4)(S S S S))(16 (B4 C5 B4 C5 B4 R)(S S S S S S))(17 (E4 F#4 E4 F#4 E4 E4)(S S S S E. S))(18 (R G5)(Q. Q.))(19 (E4 F#4 E4 F#4 G3 E4 F#4 E4 F#4 E4)(S S S S E. S S S S S))(20 (F#4)(H.))(21(E4 E4 E4 E4 E4 F#4 G4 A4 B4)(Q. Q. Q. Q. Q. Q. Q. Q. E))(22 (E4 F#4 F#4 F#4 F#4 F#4 G4 A4 B4)(E Q. Q. Q. Q. Q. Q. Q. Q))(23 (E4 F#4 G4 G4 G4 G4 G4 A4 B4)(E E Q. Q. Q. Q. Q. Q. E))(24 (E4 F#4 G4 A4 A4 A4 A4 A4 B4)(E E E Q. Q. Q. Q. Q. Q.))(25 (E4 F#4 G4 A4 B4 B4 B4 B4 B4)(E E E E Q. Q. Q. Q. Q.))(26 (E4 F#4 E4 F#4 G4 E4 G4 F#4 E4 F#4 E4)(S S S S E S S S S S S))(27 (E4 F#4 E4 F#4 E4 E4)(S S S S E. S))(28 (E4 G4 C5)(H. H. H.))(29 (C5)(W.))(30 (G4 F4 G4 B4 G4 B4)(S S S S S S))(31 (F4 G4 F4 G4 B4 F4 G4)(S S S S S S+H. Q.))(32 (G4 F4 R)(S S E))(33 (G4 F4)(S S))(34 (F4 G4 B4 G4 B4 G4 B4 G4 B4 G4 R R R R Bb4 G5 A5 G5 B5 A5 G5 E5 G5 F#5 R R R E5 F5)(S S S S S S S S S S E Q Q Q Q H. E Q E Q. E H. E E+H. Q Q E E+H W.))(35 (F4 G4 B4 G4 B4 G4)(S S S S S S))(36 (F4 G4)(S S))(37 (F4 G4 B4)(S S S))(38 (B4 G4 F4 G4 B4 C5)(S S S S S S))(39 (B4 F4)(S S))(40 (B4 G4)(S S))(41 (C5 B4 A4 C5)(W W W W))(42 (F5 E5 F5 E5 E5 E5 E5 F5 E5)(S S S S E E E S S))(43 (F5 E5 E5 C5)(E Q E Q))(44 (D5 D5 G4)(Q Q Q))(45 (G4 D5 E5 D5 R G4 R G4 R G4 G4 D5 E5 D5)(S S S S E E E E E E S S S S))(46 (D5 E5 D5)(S S E))(47 (G4 G4 F4)(W. W W+Q))(48 (F4 G4 Bb4 G4 Bb4 G4)(S S S S S S))(49 (F4 G4)(S S))(50 (F4 G4 Bb4)(S S S))(51 (G4 Bb4)(S S))(52 (Bb4 G4)(S S))))

(define (iter l f x) 
 (let loop ((n 0)) 
  (if (> n l) '() 
    (append (repeat (f (list-ref cells n)) x) 
 (loop (+ n 1))))))

(define (create-voice)
 (let ((k (+ (random-integer 4) 5)))
  (list (iter 52 (lambda (x) (cadr x)) k)
  (iter 52 (lambda (x) (caddr x)) k))))

(define (make-evs l)
 (let loop ((n 0))
  (let ((v (create-voice)))
    (if (> n l) '() 
      (append (create-events 0 
                    (transpose (pitches->numbers (car v)) 
                    (list-ref '(0 12 -12 24 36) (random-integer 4)))
                    (lengths->numbers (cadr v)) 
                    (create-constant-velocities (pitches->numbers (car v)) 96) 
                    n)
 (loop (+ n 1)))))))
 
(define evs (make-evs 5))

(save-midi evs)
