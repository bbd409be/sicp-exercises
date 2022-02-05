(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (improve guess x)
  (/ (+ (* 2 guess) (/ x (square guess)))
      3))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 
          (* guess 0.001)))

(define (cube-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-iter (improve guess x)
                x)))

(define (cube-root x)
  (cube-iter 1.0 x))

(cube-root 27)