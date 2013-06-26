;; Write a function that counts the number of atoms
;; in an expression.
;; For example: (count-atoms '(a (b) c)) => 3.
;; Notice that there is something of an ambiguity
;; in this: should (a nil c) counts as three atoms,
;; or as two, becaouse it is equivalent to (a () c)?

(ql:quickload :paip-excercise)

(defun count-atoms (exp)
  "Counts the number of atoms in an expression."
  (cond
    ((atom exp)
     (if (null exp) 0 1))
    (t
     (+ (count-atoms (car exp))
	(count-atoms (cdr exp))))))

(paip-excercise:test
 (cl-test-more:is (count-atoms '(a (b) c)) 3)
 (cl-test-more:is (count-atoms '(a () c)) 2))

(defun count-atoms2 (exp)
  "Counts the number of atoms in an expression."
  (cond
    ((atom exp) 1) ;; '() nil 'a ...
    ((= (length exp) 1) 1)
    (t
     (+ (count-atoms2 (car exp))
	(count-atoms2 (cdr exp))))))

(paip-excercise:test
 (cl-test-more:is (count-atoms2 '(a (b) c)) 3)
 (cl-test-more:is (count-atoms2 '(a () c)) 3))
