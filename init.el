(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 98 :width normal)))))

;; load various configuration files
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'package-setup)
(require 'ui-setup)
(require 'editor-setup)
(require 'tex-setup)

(if (equal system-type 'windows-nt)
    (require 'windows-setup))

