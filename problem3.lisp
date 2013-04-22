;;The prime factors of 13195 are 5, 7, 13 and 29.

;;What is the largest prime factor of the number 600851475143 ?

(in-package #:euler)

(defun problem3 (number)
  (reset-prime-list)
  (let ((limit (isqrt number)))
    (do ((prime (next-prime) (next-prime)))
        (nil)
      (if (= number prime)
          (return prime))
      (if (>= prime limit)
          (return number))
      (loop while (and (> number prime) (= (mod number prime) 0)) do
           (setq number (/ number prime))))))