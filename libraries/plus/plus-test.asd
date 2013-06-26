#|
  This file is a part of plus project.
  Copyright (c) 2013 Junpei Tajima (p.baleine@gmail.com)
|#

(in-package :cl-user)
(defpackage plus-test-asd
  (:use :cl :asdf))
(in-package :plus-test-asd)

(defsystem plus-test
  :author "Junpei Tajima"
  :license "MIT"
  :depends-on (:plus
               :cl-test-more)
  :components ((:module "t"
                :components
                ((:file "plus"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
