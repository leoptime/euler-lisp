;;; -*- lisp -*-

(in-package #:common-lisp-user)

(defpackage #:project-euler
  (:use #:common-lisp #:util)
  (:documentation "The main package of `hello-lisp'.  Exports all
  the symbols needed to use the system.")
  (:export #:hello
           #:*greeting*
           #:problem3
           #:run))
