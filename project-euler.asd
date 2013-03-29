;;; -*- lisp -*-

(defpackage project-euler-system
  (:use :common-lisp :asdf))

(in-package project-euler-system)

(defsystem project-euler
    :description "hello-lisp: a sample Lisp system."
    :long-description
    "hello-lisp is an example Lisp system.  It shows how to
    package a Lisp program or library so that it conforms to the
    cirCLe standard and can be installed without hassle."
    :version "1.0"
    :author "kasim du <kasim.du@gmail.com>"
    :maintainer "kasim du <kasim.du@gmail.com>"
    :licence "Public Domain"
    :components
    ((:doc-file "README")
     (:file "packages")
     (:file "hello" :depends-on ("packages"))
     (:file "util" :depends-on ("packages"))
     (:file "problem1" :depends-on ("packages"))
     (:file "problem2" :depends-on ("packages"))
     (:file "problem3" :depends-on ("packages" "util"))
     (:file "test" :depends-on ("packages" 
                                "problem1" 
                                "problem2"
                                "problem3"))
     ))
