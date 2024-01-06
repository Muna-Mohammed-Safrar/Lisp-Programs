(defun guess-the-number ()
  (let ((target (random 100))
        (guess nil)
        (attempts 0))
    (format t "Welcome to Guess the Number!~%")
    (loop
      (incf attempts)
      (format t "Enter your guess (between 1 and 100): ")
      (finish-output)
      (setf guess (parse-integer (read-line) :junk-allowed t))
      (cond
        ((not guess) (format t "Invalid input. Please enter a number.~%"))
        ((= guess target)
         (format t "Congratulations! You guessed the number ~a in ~a attempts.~%" target attempts)
         (return-from guess-the-number))
        ((< guess target) (format t "Too low! Try again.~%"))
        ((> guess target) (format t "Too high! Try again.~%"))))))

;; To play the game, call the function
(guess-the-number)
