;;; Environment variables

(setq exec-path (cons "/usr/local/bin" exec-path))
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))

(setq exec-path (cons "~/src/natural-bin" exec-path))
(setenv "PATH" (concat "~/src/natural-bin:" (getenv "PATH")))

(setq exec-path (cons "~/.local/bin" exec-path))
(setenv "PATH" (concat "~/.local/bin:" (getenv "PATH")))

(setq exec-path (cons "/usr/local/share/npm/bin" exec-path))
(setenv "PATH" (concat "/usr/local/share/npm/bin:" (getenv "PATH")))

(setq exec-path (cons "/Applications/Emacs.app/Contents/MacOS/bin" exec-path))
(setenv "PATH" (concat "/Applications/Emacs.app/Contents/MacOS/bin:" (getenv "PATH")))

(setq gore-bin-path "/Users/tmelhase/src/vements-go/bin/gore")
