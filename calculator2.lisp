(defun ops (a b)
  (format t "Sum: ~a~%" (+ a b))
  (format t "Difference: ~a~%" (- a b))
  (format t "Product: ~a~%" (* a b))
  (if (zerop b)
      (format t "Division by zero is undefined.~%")
      (format t "Quotient: ~a~%" (/ a b)))
  (format t "Modulus: ~a~%" (mod a b)))

(ops 20 30)


