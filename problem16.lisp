;2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
;What is the sum of the digits of the number 2^1000?



;use a list to store each individual digit of the result.
;for exmple 2^15 = 32768 will be stored as (8 6 7 2 3)
(in-package #:euler)

(defun problem16 ()
  ;;0 <= val <= 9, carry = 0 or 1.
  (labels ((double (val carry)
             (if (> val 4)
                 (values (- (+ (* 2 val) carry) 10) 1)
                 (values (+ (* 2 val) carry) 0)))

           ;;double the values in the list, append 1 to the end
           ;;if there is a carry. For exmple the result of (double-list '(2 7 8)) 
           ;;will be '(4 4 7 1).
           (double-list (lst)
             (let ((carry 0))
               (labels ((m2 (val)
                          (multiple-value-bind (r c) (double val carry)
                            (setf carry c) r)))
                 (let ((ret-lst (mapcar #'m2 lst)))
                   (if (= carry 1)
                       (append ret-lst '(1))
                       ret-lst)))))

           (impl (expotent)
             (let ((val '(1)))
               (dotimes (index expotent val)
                 (setf val (double-list val))
                 ))))
    (reduce #'+ (impl 1000))))