(add-to-list 'load-path "~/.emacs.d/vendor")

(setq custom-file "~/.emacs.d/natural/custom.el")
(load custom-file 'noerror)

;; (load "natural/theme")
(load "natural/env")
(load "natural/global")
(load "natural/defuns")
(load "natural/bindings")
(load "natural/tabs")
(load "natural/desktop")
(load "natural/disabled")
(load "natural/fonts")
(load "natural/utf-8")
(load "natural/scratch")
(load "natural/grep")
(load "natural/diff")
(load "natural/ido")
(load "natural/dired")
(load "natural/recentf")
;; (load "natural/rectangle")
;; (load "natural/org")
(load "natural/zoom")
;; (load "natural/flymake")
(load "natural/javascript")
(load "natural/ri-emacs")
(load "natural/mac")
;; (load "natural/server-mode")
(load "natural/shell-mode")
(load "natural/python-mode")
(load "natural/private" 'noerror)
(load "natural/package" 'noerror)
;; (load "natural/hl-line")
;; (load "natural/iswitchb")

(vendor 'coffee-mode)
(vendor 'magit         'magit-status)
(vendor 'markdown-mode 'markdown-mode)
(vendor 'python-mode)
(vendor 'lambda-mode)
(vendor 'jade-mode)

;; (vendor 'csv-mode      'csv-mode)
;; (vendor 'yaml-mode     'yaml-mode)
;; (vendor 'js2-mode      'js2-mode)
;; (vendor 'rinari)
;; (vendor 'textmate)
;; (vendor 'maxframe      'mf 'maximize-frame)
;; (vendor 'filladapt)
;; (vendor 'haml-mode)
;; (vendor 'sass-mode)
;; (vendor 'htmlize)
;; (vendor 'full-ack      'ack 'ack-same 'ack-find-same-file 'ack-find-file 'ack-interactive)
;; (vendor 'cdargs        'cv 'cdargs)
;; (vendor 'psvn          'svn-status)
;; (vendor 'textile-mode  'textile-mode)
;; (vendor 'inf-ruby      'inf-ruby)
;; (vendor 'rcodetools    'xmp)
;; (vendor 'yasnippet)
;; (vendor 'jekyll)
;; (vendor 'lua-mode      'lua-mode)
;; (vendor 'feature-mode)
;; (vendor 'mode-line-bell)
;; (vendor 'revbufs       'revbufs)
;; (vendor 'shell-pop)
;; (vendor 'mo-git-blame  'mo-git-blame-file 'mo-git-blame-current)
;; (vendor 'ace-jump-mode 'ace-jump-mode 'ace-jump-word-mode 'ace-jump-char-mode 'ace-jump-line-mode)
;; (vendor 'key-chord)
;; (vendor 'bundler       'bundle-open 'bundle-console 'bundle-install 'bundle-update 'bundle-check)
;; (vendor 'browse-kill-ring+ 'browse-kill-ring)
;; (vendor 'browse-kill-ring  'NEVERLOAD-browse-kill-ring)
;; (vendor 'ruby-electric 'ruby-electric-mode)
;; (vendor 'auctex)
;; (setq py-install-directory "vendor/python-mode/")
