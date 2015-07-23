; Musical Fizz Buzz
(define (fizzbuzz x)
 (cond 
 ((= (mod x 15) 0) -1)
 ((= (mod x 3) 0) -1)
 ((= (mod x 5) 0) -1)
 (else x)))

(define pitches (map fizzbuzz (iota 127)))
(define lengths (map (lambda (x) (* x 3)) (iota 127)))
(define vels (create-constant-velocities pitches 96))
(save-midi (create-events 0 pitches lengths vels 1))

