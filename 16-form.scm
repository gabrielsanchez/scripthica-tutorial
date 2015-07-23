(define seq1 '((C4 B3 A3 G3 A3 B3 C4 E4 D4 E4 F4 E4 D4 C4 E4 G4 F#4 E4 G4 F#4 G4 A4 F#4 G4 A4 G4 F#4 G4 E4 F#4 E4 D4 G4 F4 G4 E4 F4 E4 D4 C4 E4 D4 C4 B3 A3 G3 A3 B3 C4 D4 E4 D4 E4 C4 D4 C4 B3 C4 E4 G4 F4 E4 F4 D4 E4 C4 D4 A3 B3 C4 A3 B3 C4 B3 C4 E4 D4)(W E Q Q Q E E E E E E Q E Q H Q W E E E Q E E E E Q E Q H H Q W E E E Q E E E E Q Q E E E W E E E Q E E E H E Q E E Q E E E E E H H H H H H E E E Q Q E W)))

(define seq2 '((C4 D4 E4 D4 R C4 B3 A3 D4 C4 B3 R C4 B3 A3 G3 D4 E4 C4 B3 A3 G3 A3 B3 C#4 D4 B3 C#4 D4 G3 B3 D4 C4 B3 C4 G3 C4 D4 E4 D4 C4 B3 A3 G3 B3 C4 E4 G4 F4 E4 D4 C4 D4 A4 B4 C4 D4 C4 E4 D4 C4 D4)(W Q H Q E E E E E Q E E E E E H W Q H Q H H E E E Q Q E H E Q E H H Q Q E Q Q Q E H Q H Q E Q Q E E E H H W H H H H Q H Q W)))

(define seq3 '((C3 G3 C3 C3 C3 G3 C3 G3 A3 G3 C3 D3 C3 A3 G3 F#3 G3 C3 C3 C3 R D3 A3 D3 G3 C3 G3 F3 E3 D3 C3 E3 F3 G3 C3 E3 D3 C3 G3 C3 D3 E3 F3 G3 C3 G3 F3 D3 C3 D3 E3 G3 F3 E3 D3)(W E Q E Q Q H E Q E W W H Q Q H E Q E Q Q Q Q H H H H E Q E H W E Q E Q Q H H H E E E E W H H H H E Q E Q Q W)))

(define (integrate-pitches sq1 sq2) 
    (pitches->numbers (append (car sq1) (retrograde (car sq2)))))

(define (integrate-lengths sq1 sq2) 
    (lengths->numbers (append (cadr sq1) (retrograde (cadr sq2)))))

(define cantus-pitches (integrate-pitches seq1 seq2))
(define cantus-lengths (integrate-lengths seq1 seq2))
(define cantus-vels (create-constant-velocities cantus-pitches 96))
(define cantus (create-events 0 cantus-pitches cantus-lengths cantus-vels 1))

(define triplum-pitches (transpose (integrate-pitches seq2 seq1) 12))
(define triplum-lengths (integrate-lengths seq2 seq1))
(define triplum-vels (create-constant-velocities triplum-pitches 96))
(define triplum (create-events 0 triplum-pitches triplum-lengths triplum-vels 2))

(define tenor-pitches (integrate-pitches seq3 seq3))
(define tenor-lengths (integrate-lengths seq3 seq3))
(define tenor-vels (create-constant-velocities tenor-pitches 96))
(define tenor (create-events 0 tenor-pitches tenor-lengths tenor-vels 3))

(define evs (append cantus triplum tenor))

(save-midi evs)
