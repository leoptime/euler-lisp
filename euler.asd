;;; -*- lisp -*-

(defpackage euler-system
  (:use :common-lisp :asdf))

(in-package euler-system)

(defsystem euler
    :description "solution for the problem in project Euler."
    :long-description
    "This package includes both the problems and solutions written in common lisp
	for project Euler."
    :version "1.0"
    :author "kasim du <kasim.du@gmail.com>"
    :licence "Public Domain"
    :components
    ((:doc-file "README")
     (:file "packages")
     (:file "util" :depends-on ("packages"))
     (:file "problem1" :depends-on ("packages"))
     (:file "problem2" :depends-on ("packages"))
     (:file "problem3" :depends-on ("packages" "util"))
     (:file "problem8" :depends-on ("packages" "util"))
     (:file "test" :depends-on ("packages" 
                                "problem1" 
                                "problem2"
                                "problem3"))
     ))
