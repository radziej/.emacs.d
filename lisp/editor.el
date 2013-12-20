;; more extensive apropos search
(setq apropos-do-all t)

;; yank at cursor
(setq mouse-yank-at-point t)

;; better autocompletion for file operations
(ido-mode t)
(setq ido-enable-flex-matching t)

;; better completion
(global-set-key (kbd "M-/") 'hippie-expand)

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
(undo-tree-mode 1)
