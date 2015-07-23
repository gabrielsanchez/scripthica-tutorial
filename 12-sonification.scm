;; sonification

(set-tempo '((0 0 220)))

(define data '(200 300 44 122 155 231 278))

(define pitches (normalize data 70 100))
(define lengths (normalize data 100 1000))
(define vels (normalize data 40 127))

(save-midi (create-events 0 pitches lengths vels 1))

