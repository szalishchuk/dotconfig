;; Enable package management
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Line numbers settings
(load-file "~/.config/emacs/linum.el")

;; Enable evil-mode and related configuration
(load-file "~/.config/emacs/evil.el")

;; Enable org-mode and related configuration
(load-file "~/.config/emacs/org.el")

;; Enable wrapping of long-lines
(setq org-startup-truncated nil)

;; Hide markers that are used for rich text microformats (e.g. bold/italic/code/date/etc..)
(setq org-hide-emphasis-markers t)

;; Disable the splash screen (to enable it again, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;; By default, keyboard input is translated based on your system locale setting. If your terminal does not really support the encoding implied by your locale (for example, if you find it inserts a non-ASCII character if you type M-i), you will need to set keyboard-coding-system to nil to turn off encoding. You can do this by putting
(set-keyboard-coding-system nil)

;; Disable menu bar
(menu-bar-mode -1)

;; ???
(setq package-enable-at-startup nil)

;; Store all backups files in the following directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Load themes from theme directory
(add-to-list 'custom-theme-load-path "~/.config/themes/") 


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso)))
 '(package-selected-packages (quote (xclip evil htmlize))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
