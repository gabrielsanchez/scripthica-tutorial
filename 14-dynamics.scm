
;;constant value
;pitches
(define p '(60 62 64 65 69 70 81))
;durations
(define d '(1000 1000 1000 1000 1000 1000 1000))
;velocities
(define v (constant-value (length p) 96))

(play-midi (create-events 0 p d v 1))


;;create-constant-velocities
;pitches
(define p '(60 (62 64) 65 69 70 81))
;durations
(define d '(1000 (1000 1000) 1000 1000 1000 1000))
;velocities
(define v (create-constant-velocities p 96))

(play-midi (create-events 0 p d v 1))

;;create-random-velocities
;pitches
(define p '(60 (62 64) 65 69 70 81))
;durations
(define d '(1000 (1000 1000) 1000 1000 1000 1000))
;velocities
(define v (create-random-velocities p 96 120))
(play-midi (create-events 0 p d v 1))

