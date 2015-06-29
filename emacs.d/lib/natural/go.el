(require 'auto-complete)
(require 'go-autocomplete)
(require 'auto-complete-config)


(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)


(require 'go-mode-load)

(eval-after-load "go-mode"
   '(progn
 ;;     (add-to-list 'ac-modes 'go-mode)
      (require 'auto-complete-config)
      (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
      (require 'go-autocomplete)
      (ac-config-default)
      (define-key go-mode-map (kbd "RET") #'go-mode-insert-and-indent)))

(add-hook 'go-mode-hook (lambda ()
(local-set-key (kbd "M-.") 'godef-jump)))


;; (require 'company)                                   ; load company mode
;; (require 'company-go)                                ; load company mode go backend

