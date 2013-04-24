;;common util functions

(in-package #:euler)

(defun make-prime-builder ()
  (let ((prime-list nil)
        (next-prime nil))
    (values
     (defun next-prime ()
       (flet ((is-prime (number)
                (if (<= number 3)
                    t
                    (let ((limit (isqrt number)))
                      (dolist (prime prime-list)
                        (if (> prime limit)
                            (return-from nil t))
                        (if (= (mod number prime) 0)
                            (return-from nil nil)))))))
         
         (setf next-prime
               (if (null next-prime)
                   2
                   (do ((next (1+ next-prime) (1+ next)))
                       ((is-prime next) next))))
         (setf prime-list (append prime-list (list next-prime)))
         next-prime))

    (defun reset-prime-builder ()
      (setf prime-list nil)
      (setf next-prime nil)))))

;decompose a number. for exmple (decompose 36) = '(2 2 3 3)
(defun decompose (number)
  (make-prime-builder)
  (let ((factors nil))
    (do* ((prime (next-prime) (if (/= (mod number prime) 0) (next-prime) prime)))
         ((< number prime) factors)
      (if (= (mod number prime) 0)
          (progn
            (setf number (/ number prime))
            (setf factors (cons prime factors)))))))

;group identical items in a list. for example (group '(1 2 2 3 3 3 5 5)) = '((1) (2 2) (3 3 3 ) (5 5))
(defun group (lst)
  (let ((group-lst nil)
        (group nil)
        (last nil))
    (loop :for item :in lst :do
       (if (and (null group) (null last) (null group-lst))
           (progn 
             (setf last item)
             (setf group (cons item nil)))
           (if (equal item last)
               (setf group (cons item group))
               (progn 
                 (setf last item)
                 (setf group-lst (append group-lst (list group)))
                 (setf group (cons item nil)))))
       :finally (setf group-lst (append group-lst (list group))))
    group-lst))
