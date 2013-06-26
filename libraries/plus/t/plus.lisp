#|
  This file is a part of plus project.
  Copyright (c) 2013 Junpei Tajima (p.baleine@gmail.com)
|#

(in-package :cl-user)
(defpackage plus-test
  (:use :cl
        :plus
        :cl-test-more))
(in-package :plus-test)

(plan nil)

(diag "Testing 'plus'. Wait some seconds...")
(is (plus 1 2) 3)
(is (plus 11 22) 33)
(is (plus 111 222) 333)

(finalize)
