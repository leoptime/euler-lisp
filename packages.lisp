;;; -*- lisp -*-

(in-package #:common-lisp-user)

(defpackage #:euler
  (:use #:common-lisp)
  (:documentation "The main package of `project-euler'.  Exports all
  the symbols needed to use the system.")
  (:export 
		#:problem1
		#:problem2
		#:problem3
		#:run))
