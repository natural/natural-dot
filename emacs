;; yeah no
(setq inhibit-splash-screen t)
(set-default 'truncate-lines t)
(setq column-number-mode t)

;; ido this way
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-enable-last-directory-history nil)

;; packages are awesome, too
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; desktops are awesome
(require 'desktop)
(desktop-save-mode 1)


;; config js modes
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.es6\\'" . js2-mode))
(setq js2-cleanup-whitespace t)
(setq js2-basic-offset 4)
(setq js2-bounce-indent-p t)

;; i hate sass
(add-to-list 'auto-mode-alist '("\\.scss\\'" . sass-mode))

;; keybindings my way
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)
(global-set-key (kbd "M-O") 'rotate-windows)
;; (global-set-key (kbd "C-'") 'match-paren)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; i use this more than i care to admit
(defun nuke-all-buffers ()
  "kill all buffers, leaving *scratch* only"
  (interactive)
  (mapcar (lambda (x) (kill-buffer x))
        (buffer-list))
  (delete-other-windows))

;; go mode requires much config
(require 'auto-complete)
(require 'go-autocomplete)
(require 'auto-complete-config)
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)
(eval-after-load "go-mode"
   '(progn
      (require 'auto-complete-config)
      (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
      (require 'go-autocomplete)
      (ac-config-default)
      (define-key go-mode-map (kbd "RET") #'go-mode-insert-and-indent)))
(add-hook 'go-mode-hook (lambda ()
(local-set-key (kbd "M-.") 'godef-jump)))

;; idk what this means
(put 'dired-find-alternate-file 'disabled nil)


;; bleh
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ag-reuse-buffers t)
 '(ag-reuse-window nil)
 '(async-bytecomp-package-mode t)
 '(blink-cursor-mode nil)
 '(css-indent-offset 4)
 '(current-language-environment "ASCII")
 '(custom-safe-themes
   (quote
    ("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(desktop-save t)
 '(desktop-save-mode t)
 '(global-git-gutter-mode t)
 '(ido-file-extensions-order (quote (".jade" ".coffee")))
 '(indent-tabs-mode nil)
 '(js-indent-level 4)
 '(js2-mode-show-strict-warnings t)
 '(js2-strict-missing-semi-warning nil)
 '(menu-bar-mode nil)
 '(package-archives
   (quote
    (("melpa" . "http://stable.melpa.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(sass-indent-offset 4)
 '(scroll-bar-mode nil)
 '(sgml-basic-offset 4)
 '(sh-indentation 2)
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(sml/theme (quote respectful))
 '(sql-product (quote postgres))
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#201f1f" :foreground "#d4d2cf" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width extra-condensed :foundry "FBI " :family "Input Mono Compressed"))))
 '(ag-hit-face ((t (:foreground "tomato"))))
 '(ag-match-face ((t (:foreground "yellow"))))
 '(border ((t (:background "red"))))
 '(compilation-column-number ((t (:inherit font-lock-doc-face :foreground "light sea green"))))
 '(compilation-line-number ((t (:inherit font-lock-keyword-face :foreground "lime green"))))
 '(cursor ((t (:background "gray"))))
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face :foreground "dim gray"))))
 '(font-lock-comment-face ((t (:foreground "dark gray"))))
 '(font-lock-constant-face ((t (:foreground "plum" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "medium purple"))))
 '(font-lock-keyword-face ((t (:foreground "#7095D7"))))
 '(font-lock-string-face ((t (:foreground "medium sea green"))))
 '(font-lock-type-face ((t (:foreground "light slate gray" :weight bold))))
 '(ido-first-match ((t (:foreground "dodger blue" :weight bold))))
 '(ido-subdir ((t (:foreground "sea green"))))
 '(magit-branch-local ((t (:foreground "dodger blue"))))
 '(magit-branch-remote ((t (:foreground "#1eff90"))))
 '(magit-hash ((t (:background "gray20" :foreground "orange red"))))
 '(magit-log-author ((t (:foreground "gray5"))))
 '(magit-log-date ((t (:foreground "snow3"))))
 '(magit-log-graph ((t (:foreground "grey30"))))
 '(magit-section-heading ((t (:foreground "goldenrod" :weight bold))))
 '(minibuffer-prompt ((t (:foreground "#7095D7"))))
 '(mode-line ((t (:foreground "#ffffff" :box (:line-width -1 :color "#303030")))))
 '(mode-line-buffer-id ((t (:foreground "#7095D7"))))
 '(mode-line-emphasis ((t nil)))
 '(mode-line-inactive ((t (:foreground "#505050" :box (:line-width -1 :color "#101010")))))
 '(region ((t (:background "dim gray"))))
 '(trailing-whitespace ((((class color) (background dark)) (:background "#303030"))))
 '(vertical-border ((t nil))))




;; the most awesome of them all
;; (require 'magit)
(autoload 'magit "magit-mode" "" t)
(global-set-key (kbd "C-x C-g") 'magit-status)


;; (require 'cider)
;; (autoload 'clojure-mode "clojure-mode" "A major mode for Clojure" t)
;; (add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
(autoload 'cider "cider-mode" "" t)
(require 'company)
(add-hook 'cider-mode-hook #'eldoc-mode)
;; (setq nrepl-hide-special-buffers nil)
;; (global-company-mode)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

(setq company-idle-delay nil) ; never start completions automatically
(global-set-key (kbd "M-TAB") #'company-complete) ; use meta+tab, aka C-M-i, as manual trigger
;; match paren?


;; Use `rainbow-identifiers-mode' to enable/disable


;; (require 'rainbow-blocks)
(require 'rainbow-delimiters)
(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)
(add-hook 'cider-repl-mode-hook #'paredit-mode)


(require 'rainbow-mode)
(rainbow-mode)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
