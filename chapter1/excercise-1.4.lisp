;; Write a function that counts the number of times
;; an expression occurs anywhere whithin anothoer
;; expression.
;; Example: (count-anywhere 'a '(a ((a) b) a)) => 3.

(use-package :cl-test-more)

(plan nil)

(defun count-anywhere (target another)
  "Counts the number of times
an expression occurs anywhere whithin anothoer
expression.
Example: (count-anywhere 'a '(a ((a) b) a)) => 3."
  (cond
    ((null another) 0)
    ((atom another) 
     (if (eq target another) 1 0))
    (t
     (+ (count-anywhere target (car another))
	(count-anywhere target (cdr another))))))

(is (count-anywhere 'a '(a ((a) b) a)) 3)

(finalize)
