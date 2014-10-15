;; UTF-8 as default encoding
(set-language-environment "utf-8")

;; don't use tabs to indent
(setq-default indent-tabs-mode nil)
;; but maintain correct appearance
(setq-default tab-width 8)

;; enable M-a and M-e to work with 1 space
(setq sentence-end-double-space nil)

;; default filling up to column 80 instead of 70
(setq-default fill-column 80)

;; more extensive apropos search
(setq apropos-do-all t)

;; yank at cursor
(setq mouse-yank-at-point t)

;; better completion
(global-set-key (kbd "M-/") 'hippie-expand)
;; different order of attempted completions
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
					 try-expand-dabbrev-all-buffers
					 try-expand-dabbrev-from-kill
					 try-complete-file-name-partially
					 try-complete-file-name
					 try-expand-all-abbrevs
					 try-expand-list
					 try-expand-line
					 try-complete-lisp-symbol-partially
					 try-complete-lisp-symbol))

;; unique buffer names - no <2>foo.bar
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; better overview of buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; common directory for autosaves
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (concat user-emacs-directory "places"))
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))

(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; easy to use, but still sophisticated undo/redo tree
(require 'undo-tree)
(global-undo-tree-mode)

(provide 'editor-setup)
