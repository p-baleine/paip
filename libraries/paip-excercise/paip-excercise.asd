(in-package :cl-user)
(defpackage paip-excercise
  (:use :cl :asdf))
(in-package :paip-excercise)

(defsystem paip-excercise
  :version "0.1"
  :author "Junpei Tajima"
  :depends-on (:cl-annot :cl-test-more)
  :components ((:module "src"
                :components
                ((:file "paip-excercise")))))
