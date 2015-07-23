(define seq (sieve-union (sieve 2 0 20 100) (sieve 5 0 20 100)))
(define pitches (palindrome seq))
(define lengths (constant-value (length pitches) 125))
(define vels (create-constant-velocities pitches 96))
(define evs (create-events 0 pitches lengths vels 1))
(save-midi evs)

