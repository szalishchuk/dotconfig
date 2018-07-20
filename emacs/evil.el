
;; Enable tab in normal mode
(setq evil-want-C-i-jump nil)


;; Enable evil-mode (requires installation)
(require 'evil)
(evil-mode 1)

;; Addresses the mess with clipboard management, including evil mode with emacs -nw
(xclip-mode 1)
