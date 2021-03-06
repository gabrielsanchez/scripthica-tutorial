;; markov bach violin partita bwv 1002

(define courante-a '(
    (0 b4) 
    (1 b4 b3 d4 f#4 b4 d5)
    (2 c#5 f#4 a#3 e4 d4 c#4)
    (3 b3 d4 f#4 b4 d5 f#5)
    (4 e5 a4 c#4 g4 f#4 e4)
    (5 d4 f#4 a4 d5 f#5 a5)
    (6 g5 b4 e4 d5 c#5 b4)
    (7 a#4 g5 e5 e4 d#4 a4)
    (8 g#4 f#5 e5 d4 c#4 e4)
    (9 a#4 e5 e5 d5 c#5 d5)
    (10 c#5 f#4 a#3 g4 f#4 e4)
    (11 d4 f#4 b4 d#5 f#5 b5)
    (12 g5 b4 e4 g4 b4 d5)
    (13 c#5 e4 a3 c#4 e4 g4)
    (14 b4 g4 b4 d5 g5 b5)
    (15 c#6 e5 g4 e5 a5 c#6)
    (16 d6 a5 e5 d5 a4 c#5)
    (17 d4 d6 c#6 b5 a#5 b5)
    (18 c#6 e5 a#4 g5 f#5 e5)
    (19 d5 f#5 b5 g#5 a5 f#5)
    (20 e#5 g#5 b5 d6 c#6 b4)
    (21 a4 c#5 f#5 a5 c#6 e5)
    (22 d#5 f#5 a5 c6 b5 a4)
    (23 g#4 b4 e#5 g#5 b5 f#4)
    (24 e#4 g#4 c5 e#5 g#5 b5)
    (25 a5 c#5 f#4 g5 f#5 e5)
    (26 d5 f#4 b3 c5 b4 a4)
    (27 g4 b4 d5 g5 e#5 f#5)
    (28 b4 e#4 g#3 e#4 b4 d5)
    (29 c#5 a4 g#4 f#4 c#4 e#4)
    (30 f#4 a#4 c#5 e5 d5 b4)
    (31 c#5 a#4 f#4)
))

(define double-a '(
    (0 b4)
    (1 b4 a4 g4 f#4 e4 d4 c#4 b3 d4 c#4 b3)
    (2 a#3 c#4 d4 e4 f#4 g#4 a#4 b4 c#5 d5 e5 c#5)
    (3 d5 b4 a4 g4 f#4 e4 d4 c#4 b3 d4 c#4 b3)
    (4 c#4 e4 f#4 g4 a4 b4 c#5 d5 e5 f#5 g5 e5)
    (5 f#5 d5 c#5 b4 a4 g4 f#4 e4 d4 f#4 e4 d4)
    (6 e4 g4 a4 b4 c5 d5 e5 f#5 g5 e5 f#5 g5)
    (7 a#4 c#5 d5 e5 f#5 g4 f#4 e4 d#4 c5 b4 a4)
    (8 g#4 b4 c#5 d5 e5 f#4 e4 d4 c#4 d5 c#5 b4)
    (9 a#4 g5 f#5 e5 d5 f#5 g#5 a#5 b5 d5 c#5 b4)
    (10 f#4 c#5 d5 e5 f#5 g#5 a#5 b5 c#6 d6 e6 c#6)
    (11 d6 b5 a5 g5 f#5 e5 d5 c#5 b4 a4 g#4 f#4)
    (12 e4 b4 c#5 d5 e5 f#5 g#5 a5 b5 c#6 d6 b5)
    (13 c6 a5 g#5 f#5 e5 d5 c#5 b4 a4 g4 f#4 e4)
    (14 d4 a4 b4 c#5 d5 e5 f#5 g5 a5 b5 c6 a5)
    (15 b5 g5 f#5 e5 d5 c5 b4 a4 g4 f#4 e4 d4)
    (16 c#4 e4 f#4 g4 a4 b4 c#5 d5 e5 f#5 g5 f#5)
    (17 f#5 a5 b5 c#6 d6 f#5 e5 d5 a4 e5 d6 c#6)
    (18 d6 a5 f#5 d6 a5 f#5 d5 a5 f#5 d5 c#5 b4)
    (19 a#4 g5 f#5 e5 c6 b5 a#5 g#5 f#5 e5 d5 c#5)
    (20 d5 b4 d5 f#5 b5 c#6 d6 c#6 b5 a5 g#5 f#5)
    (21 e#5 c#6 g#5 e#5 c#5 g#5 e#5 c#6 b4 d5 c#5 b4)
    (22 a4 c#5 f#5 g#5 a5 b5 c#6 b5 a5 g#5 f#5 e5)
    (23 d#5 b5 f#5 d#5 b4 f#5 d#5 b4 a4 c#5 b4 a4)
    (24 g#4 f#5 d5 b5 g#4 d5 b4 g#4 f#4 a4 g#4 f#4)
    (25 e#4 g#4 a4 b4 c5 d#5 e#5 f#5 g#5 a5 b5 g#5)
    (26 a5 f#5 e5 d5 c#5 b4 a4 g#4 f#4 e4 d4 c#4)
    (27 b3 f#4 g4 a4 b4 c#5 d5 e5 f#5 g5 a5 f#5)
    (28 g5 b5 g5 d5 b4 g5 d5 b4 g4 d5 b4 g4)
    (29 e#4 b4 g#4 e#4 c#4 d#4 e#4 f#4 g#4 a4 b4 g#4)
    (30 a4 f#4 a4 c#4 f#5 a4 g#4 f#4 c4 g#4 f#4 e#4)
    (31 f#5 f#4 a#4 c#5 e5 f#4 g#4 c#5 d5 f#4 b4 d5)
    (32 c#5 b4 a#4 g#4 f#4 a#4 c#5 e#5 f#5)
))

(define (make-form l)
  (if (null? l) '()
       (append (cdar l) (make-form (cdr l)))))

(define intervals-c (delta (pitches->numbers (make-form courante-a))))
(define intervals-d (delta (pitches->numbers (make-form double-a))))
(define intervals (append intervals-c intervals-d))
(define (nl) (markov intervals 16))

(define p (idelta (nl) 59 45 85))
(define d (constant-value (length p) 250))
(define v (constant-value (length p) 96))

(save-midi (create-events 0 p d v 1))

