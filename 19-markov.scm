; define a pattern.
(define p '(c5 d4 e5 cb5 eb4 cb5 eb4 a3 d4 c5 d4 e3 cb5))

; use the markov function to define the pitches from the pattern
(define pitches (pitches->numbers (markov p 2)))

; define the durations
(define lengths (constant-value (length pitches) 250))

; define the velocities
(define vels (constant-value (length pitches) 96))

; define events and save midi
(define evs (create-events 0 pitches lengths vels 1))
(save-midi evs)

