(define (f n) 
  (f-iter 2 1 0 n))

(define (f-iter n)
  (if (< n 3) 
    n
    (+ (f-iter (- n 1))
       (* 2 (f-iter (- n 2))) 
       (* 3 (f-iter (- n 3))))))

(define (f-iter a b c count)
  (if (< count 3) 
    a
    (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))
