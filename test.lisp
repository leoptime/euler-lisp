;;

(in-package #:project-euler)

(defun run ()
  (format t "1.    the sum of all the multiples of 3 or 5 below 1000 is : ~s~%" (problem1 999 3 5))
  (format t "2.    By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms : ~s~%" (problem2 1 2 4000000 0))
  (format t "3:    What is the largest prime factor of the number 600851475143 ? ~s~%" (problem3 600851475143))
  )
