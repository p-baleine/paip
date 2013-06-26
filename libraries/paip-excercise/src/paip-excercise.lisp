;;;; paip-exercise.lisp

(in-package :cl-user)
(defpackage paip-excercise
  (:use :cl :cl-test-more))
(in-package :paip-excercise)

(cl-annot:enable-annot-syntax)

@export
(defmacro test (&rest body)
  `(progn
     (plan nil)
     ,@body
     (finalize)))

