;; Enable relative line numbers through linum-relative (requires installation)
(require 'linum-relative)

;; Enable display of line numbers
(global-linum-mode t)

;; Show absolute line number for the current line (aka hybrid line number mode)
(linum-relative-on)

;; Use `display-line-number-mode` as linum-mode's backend for smooth performance
(setq linum-relative-backend 'display-line-numbers-mode)

;; Enable display of absolute line number for the current line (instead of 0)
(setq linum-relative-current-symbol "")

;; Enable line format to add extra margins
;; (setq linum-format " %d ")
