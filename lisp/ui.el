;; menu-, tool- and scrollbars
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
(menu-bar-mode 1)

;; the blinking cursor is nothing, but an annoyance
(blink-cursor-mode -1)

;; Show matching parenthesis
(show-paren-mode 1)

;; disable startup screen
(setq inhibit-startup-screen t)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; make the fringe (gutter) smaller
;; the argument is a width in pixels (the default is 8)
(if (fboundp 'fringe-mode)
    (fringe-mode 4))

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; more useful frame title, that show either a file or a
;; buffer name (if the buffer isn't visiting a file)
(setq frame-title-format
      '("" invocation-name " " (:eval (if (buffer-file-name)
                                            (abbreviate-file-name (buffer-file-name))
                                          "%b"))))

;; themes
;; use zenburn as the default theme
(load-theme 'zenburn t)

;; enable powerline
(powerline-default-theme)

;; use solarized-dark/light as the default theme
;; (load-theme 'solarized-dark t)
;; ;; make the fringe stand out from the background
;; (setq solarized-distinct-fringe-background t)
;; ;; make the modeline high contrast
;; (setq solarized-high-contrast-mode-line t)
;; (load-theme 'solarized-dark t)

