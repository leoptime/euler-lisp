;;; -*- lisp -*-

(in-package #:common-lisp-user)

(defpackage #:project-euler
  (:use #:common-lisp)
  (:documentation "The main package of `project-euler'.  Exports all
  the symbols needed to use the system.")
  (:export #:run))
