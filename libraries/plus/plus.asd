#|
  This file is a part of plus project.
  Copyright (c) 2013 Junpei Tajima (p.baleine@gmail.com)
|#

#|
  Author: Junpei Tajima (p.baleine@gmail.com)
|#

(in-package :cl-user)
(defpackage plus-asd
  (:use :cl :asdf))
(in-package :plus-asd)

(defsystem plus
  :version "0.1"
  :author "Junpei Tajima"
  :license "MIT"
  :depends-on (:cl-annot)
  :components ((:module "src"
                :components
                ((:file "plus"))))
  :description ""
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.markdown"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (load-op plus-test))))
