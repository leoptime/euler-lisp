;;common util functions

(in-package #:euler)

(let ((prime-list nil))
  (defun reset-prime-list ()
    (setq prime-list nil))

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

      (let ((next-prime nil))
	(setf next-prime
	      (if (null prime-list)
		  2
		  (do ((next (1+ (last-ele prime-list)) (1+ next)))
		      ((is-prime next) next))))
	(setf prime-list (append prime-list (list next-prime)))
	next-prime))))
