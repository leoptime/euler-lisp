;;description
;If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
;Find the sum of all the multiples of 3 or 5 below 1000.

(in-package #:euler)

(defun problem1 (n a b)
  (flet ((from-1-to-n (n) (/ (* n (1+ n)) 2)))
    (let* ((qa (values (floor n a)))
           (qb (values (floor n b)))
           (lcm (lcm a b))
           (ql (values (floor n lcm))))
      (- (+ (* (from-1-to-n qa) a)
            (* (from-1-to-n qb) b))
         (* (from-1-to-n ql) lcm)))))

