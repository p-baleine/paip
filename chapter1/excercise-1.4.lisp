;; Write a function that counts the number of times
;; an expression occurs anywhere whithin anothoer
;; expression.
;; Example: (count-anywhere 'a '(a ((a) b) a)) => 3.

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

(paip-excercise:test
 (cl-test-more:is (count-anywhere 'a '(a ((a) b) a)) 3))
