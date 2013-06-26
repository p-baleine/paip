#|
  This file is a part of plus project.
  Copyright (c) 2013 Junpei Tajima (p.baleine@gmail.com)
|#

(in-package :cl-user)
(defpackage plus
  (:use :cl))
(in-package :plus)

(cl-annot:enable-annot-syntax)

@export
(defun plus (a b)
  (+ a b))
