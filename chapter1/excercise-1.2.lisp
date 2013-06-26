;; Write a function to exponentiate, or raise
;; a number to an integer power.
;; For example: (power 3 2) = 3^2 = 9

(use-package :cl-test-more)

(plan nil)

(defun power (base n)
  "Exponentiate, or raise a number to an integer power.
For example: (power 3 2) = 3^2 = 9"
  (if (= n 1)
      base
      (* base (power base (- n 1)))))

(is (power 3 1) 3)
(is (power 3 2) 9)

(finalize)
