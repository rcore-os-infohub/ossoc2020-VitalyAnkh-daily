

;; This buffer is for text that is not saved, and for Lisp evaluation.

;; To create a file, visit it with C-x C-f and enter text in its buffer.
(setq my-name "Bastien")

(insert "Hello!")Hello!Hello!Hello!Hello!
Hello!

(insert "Hello, I am " my-name)Hello, I am Bastien
(defun hello () (insert "Hello, I am " my-name))
(hello)Hello, I am Bastien
(defun hello () (insert "Hello, I'm VitalyR"))

(defun hello (name) (insert "Hello " name))
(hello "you")
(swith-to-buffer-other-window "*test*")

(progn 
(switch-to-buffer-other-window "*test*")
(hello "you"))

(progn 
(switch-to-buffer-other-window "*test*")
(erase-buffer)
(hello "there"))

(progn
(switch-to-buffer-other-window "*test*")
(erase-buffer)
(hello "you")
(other-window 1))

(format "Hello %s!\n" "visitor")

(let ((local-name "you"))
(switch-to-buffer-other-window "*test*")
(erase-buffer)
(hello local-name)
(other-window 1))

(defun hello (name)
(insert (format "Hello %s!\n" name)))
(hello "you")
Hello you!

(defun greeting (name) 
    (let ((your-name "Bastien"))
        (insert (format "Hello %s!\n\nI am %s."
            name
            your-name
            ))))
(greeting "you")
Hello you!

I am Bastien.
(read-from-minibuffer "Enter your name: ")

(defun greeting (from-name)
    (let
