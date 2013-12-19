(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)


(defvar ensure-packages
  '(ace-jump-mode powerline undo-tree zenburn-theme)
  "A list of packages to ensure are installed at launch.")

;; check if the packages is installed; if not, install it.
(mapc
 (lambda (package)
   (or (package-installed-p package)
       (if (y-or-n-p (format "Package %s is missing. Install it? " package)) 
           (package-install package))))
 ensure-packages)
