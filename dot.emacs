;; python
;
(require 'python-mode)
(autoload 'pymacs-load  "pymacs" nil t)
(autoload 'pymacs-eval  "pymacs" nil t)
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call  "pymacs")

(setq interpreter-mode-alist
    (cons '("python" . python-mode) interpreter-mode-alist))

(setq python-mode-hook
    '(lambda () (progn
                    ;;(set-variable 'py-python-command "/usr/bin/python2.5")
		    (set-variable 'py-python-command "/usr/bin/ipython")
		    (c-subword-mode 1)
		    (outline-setup "^class \\|[   ]*def \\|^#")
                    (set-variable 'py-indent-offset 4)
                    (set-variable 'py-smart-indentation nil)
                    (set-variable 'indent-tabs-mode nil))))


;; javascript
;
(autoload 'javascript-mode "javascript" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))

;; css
;
(autoload 'css-mode "css-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.csst\\'" . css-mode))

;; page templates
;
(add-to-list 'auto-mode-alist '("\\.pt\\'" . html-mode))

;; xml
;
(autoload 'xml-mode "xml" nil t)
(add-to-list 'auto-mode-alist '("\\.zcml\\'" . xml-mode))

;; markdown
;
(autoload 'markdown-mode "markdown-mode.el"
    "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\.md" . markdown-mode) auto-mode-alist))


;; bring in our emacs cheat sheet
;
(save-current-buffer
    (if (file-readable-p "~/.emacs.d/cheats.txt")
        (progn
            (set-buffer (get-buffer-create "*cheats*"))
            (insert-file-contents "~/.emacs.d/cheats.txt"))))


;; commands
;
(defun nuke-all-buffers ()
  "kill all buffers, leaving *scratch* only"
  (interactive)
  (mapcar (lambda (x) (kill-buffer x))
	      (buffer-list))
  (delete-other-windows))

(defun eshell/clear ()
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))


;;
;
;;(if (and (daemonp) (locate-library "edit-server"))
;;    (progn
;;      (require 'edit-server)
;;      (edit-server-start)))


;; editor configuration
;
(setq frame-background-mode 'dark)
(set-default 'truncate-lines t)
(setq ansi-color-for-comint-mode t)
(setq kill-read-only-ok 1)
(setq outline-start-hidden nil)
(setq history-length 250)
(desktop-save-mode 1)
(add-to-list 'desktop-globals-to-save 'file-name-history)
(column-number-mode t)
(transient-mark-mode t)
(menu-bar-mode nil)
(tool-bar-mode nil)
(scroll-bar-mode nil)
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
(fringe-mode nil)
(blink-cursor-mode nil)


;; added by Custom
;
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(browse-url-browser-function (quote browse-url-kde))
 '(c-basic-offset 4)
 '(c-insert-tab-function (quote insert-tab))
 '(c-syntactic-indentation nil)
 '(indent-tabs-mode t)
 '(inhibit-startup-screen t)
 '(nxml-child-indent 4)
 '(nxml-outline-child-indent 4)
 '(sgml-basic-offset 4)
 '(show-trailing-whitespace t)
 '(w3m-default-display-inline-images t)
 '(w3m-use-toolbar nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width condensed :foundry "unknown" :family "Anka/Coder Narrow"))))
 '(antlr-keyword ((t (:inherit font-lock-keyword-face :foreground "#B09378"))))
 '(antlr-ruledef ((t (:inherit font-lock-function-name-face :foreground "#587EB0"))))
 '(antlr-tokenref ((t (:inherit font-lock-type-face :foreground "#ffc080"))))
 '(buffer-menu-buffer ((t (:foreground "#9AC0CD"))))
 '(completions-first-difference ((t (:inherit bold :foreground "#FFB90F"))))
 '(custom-link ((t (:inherit link))))
 '(custom-state ((((class color) (background dark)) (:foreground "#1874cd"))))
 '(eshell-prompt ((t (:foreground "#79B579"))))
 '(font-lock-comment-delimiter-face ((default (:foreground "#999999")) (((class color) (min-colors 16)) nil)))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background dark)) (:foreground "#999999"))))
 '(font-lock-function-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "#ffc080" :weight bold))))
 '(font-lock-keyword-face ((((class color) (min-colors 88) (background dark)) (:foreground "#587EB0"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background dark)) (:foreground "#7Fb094"))))
 '(font-lock-type-face ((((class color) (min-colors 88) (background dark)) (:foreground "#B09378" :weight bold))))
 '(fringe ((((class color) (background dark)) (:background "#000000"))))
 '(isearch ((((class color) (min-colors 88) (background dark)) (:background "#ff4500" :foreground "#ffffff"))))
 '(lazy-highlight ((((class color) (min-colors 88) (background dark)) (:background "#caff70" :foreground "black"))))
 '(link ((((class color) (min-colors 88) (background dark)) (:foreground "#1E90FF" :underline t))))
 '(minibuffer-prompt ((((background dark)) (:foreground "#1E90FF"))))
 '(mode-line ((((class color) (min-colors 88)) (:background "#000000" :foreground "#ffffff" :box (:line-width -1 :color "#1E90FF")))))
 '(mode-line-buffer-id ((t (:foreground "#1E90FF"))))
 '(mode-line-emphasis ((t nil)))
 '(mode-line-inactive ((t (:background "#000000" :foreground "#505050" :box (:line-width -1 :color "#909090")))))
 '(py-builtins-face ((t (:foreground "#98ff7c"))) t)
 '(py-decorators-face ((t (:foreground "#ff4500"))) t)
 '(py-pseudo-keyword-face ((t (:foreground "#6caad9"))) t)
 '(region ((((class color) (min-colors 88) (background dark)) (:background "#1874CD" :foreground "#ffffff"))))
 '(trailing-whitespace ((((class color) (background dark)) (:background "#303030")))))


;; what?
;
(put 'downcase-region 'disabled nil)
