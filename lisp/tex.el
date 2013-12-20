 ;; AUCTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq TeX-PDF-mode t)

;; ;; Viewer for TeX-previews in Emacs
(add-to-list 'exec-path "C:/Program Files (x86)/Ghostscript/gs9.10/bin")

;; RefTeX also recognizes \addbibresource.
(setq reftex-bibliography-commands '("bibliography" "nobibliography" "addbibresource"))
