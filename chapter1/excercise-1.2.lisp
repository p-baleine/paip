;; Write a function to exponentiate, or raise
;; a number to an integer power.
;; For example: (power 3 2) = 3^2 = 9

(ql:quickload :paip-excercise)

(defun power (base n)
  "Exponentiate, or raise a number to an integer power.
For example: (power 3 2) = 3^2 = 9"
  (if (= n 1)
      base
      (* base (power base (- n 1)))))

(paip-excercise:test
 (cl-test-more:is (power 3 1) 3)
 (cl-test-more:is (power 3 2) 9))
