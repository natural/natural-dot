(defun coffee-custom ()
      (and (file-exists-p (buffer-file-name))
           (file-exists-p (coffee-compiled-file-name))
           (coffee-cos-mode t)))

(add-hook 'coffee-mode-hook '(lambda () (coffee-custom)))
