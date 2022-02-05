(define (square x) (* x x))

(define (sumSquares a b) (+ (square a) (square b)))

(define (sumBigSquares a b c)
        (cond ((and (> a c) (> b c)) (sumSquares a b))
              ((and (> b a) (> c a)) (sumSquares b c))
              (else (sumSquares a c))))

(sumBigSquares 4 3 2)