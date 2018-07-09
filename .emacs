;; Enable package management
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Enable org-mode
(require 'org)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'auto-mode-alist '("\\.txt$" . org-mode))

;; Define statuses for TODO items
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

;; Define common tags
(setq org-tag-alist '(("@work" . ?w) ("@home" . ?h) ))

;; Add all files from the target directory to agenda
(setq org-agenda-files '("~/ownCloud/Goals"))

;; Set a key binding for agenda view
(global-set-key "\C-ca" 'org-agenda)

;; Disable the splash screen (to enable it again, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;; By default, keyboard input is translated based on your system locale setting. If your terminal does not really support the encoding implied by your locale (for example, if you find it inserts a non-ASCII character if you type M-i), you will need to set keyboard-coding-system to nil to turn off encoding. You can do this by putting
(set-keyboard-coding-system nil)

;; ???
(setq package-enable-at-startup nil)

;; Store all backups files in the following directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/ownCloud/Goals/Health/dental.txt"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
