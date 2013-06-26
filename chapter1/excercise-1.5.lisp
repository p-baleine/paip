;; Write a function to compute the dot product of
;; two sequences of numbers, represenred as lists.
;; The dot product is cumputed by multiplying
;; corresponding elements and then adding up the
;; resulting products.
;; Example:
;; (dot-product '(10 20) '(3 4)) = 10 * 3 + 20 * 4 = 110

(defun dot-product (a b)
  "Return the dot product of two sequences
of numbers, represenred as lists."
  (apply #'+
	 (mapcar #'(lambda (x y) (* x y)) a b)))

(paip-excercise:test
 (cl-test-more:is (dot-product '(10 20) '(3 4)) 110))
