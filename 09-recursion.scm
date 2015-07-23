(define (factorial n)
    (if (or (= n 0) (= n 1))
        1
        (* n (factorial (- n 1)))))

(define (fibonacci n)
  (seq-iter 1 0 n))

(define (lucas n)
  (seq-iter 1 2 n))

(define (seq-iter a b count)
  (if (= count 0)
      b
      (seq-iter (+ a b) a (- count 1))))

