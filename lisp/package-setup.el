(require 'cl) ;; for `every' statement

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t) ;; include melpa as a package repository
(package-initialize)


(defvar ensure-packages-list
  '(ace-jump-mode
    undo-tree helm
    zenburn-theme
    powerline)
  "List of packages that are ensured to be installed.")
 
(defun ensure-packages-p (list-of-packages)
  "Checks if every package in the LIST-OF-PACKAGES is installed"
  (every #'package-installed-p list-of-packages))

(defun ensure-packages-install (list-of-packages)
  "Asks whether to install missing packages from the LIST-OF-PACKAGES"
  (mapc
   (lambda (package)
     (or (package-installed-p package)
	 (if (y-or-n-p (format "Package %s is missing. Install it? " package)) 
	     (package-install package))))
   list-of-packages))

(defun ensure-packages ()
  "Ensures that all packages defined in `ensure-packages-list' are installed and prompts to install the missing ones"
  (unless (ensure-packages-p ensure-packages-list)
    (package-refresh-contents)
    (ensure-packages-install ensure-packages-list)))

(ensure-packages)
(provide 'package-setup)
