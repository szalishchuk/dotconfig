;; Enable package management
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Enable tab in normal mode
(setq evil-want-C-i-jump nil)

;; Addresses the mess with clipboard management, including evil mode with emacs -nw
(xclip-mode 1)

;; Enable evil-mode
(require 'evil)
(evil-mode 1)

;; Enable org-mode
(require 'org)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'auto-mode-alist '("\\.txt$" . org-mode))

;; Configure agenda export settings
(setq org-agenda-exporter-settings
      '((ps-number-of-columns 2)
        (ps-landscape-mode t)
        (org-agenda-add-entry-text-maxlines 5)
        (htmlize-output-type 'css)))

;; (setq org-agenda-custom-commands
;;       '(("X" agenda ""
;;          ((ps-number-of-columns 2)
;;           (ps-landscape-mode t)
;;           (org-agenda-prefix-format " [ ] ")
;;           (org-agenda-with-colors nil)
;;           (org-agenda-remove-tags t))
;;          ("theagenda.ps"))))



;; Enable wrapping of long-lines
(setq org-startup-truncated nil)

;; Hide markers that are used for rich text microformats (e.g. bold/italic/code/date/etc..)
(setq org-hide-emphasis-markers t)

;; Define statuses for TODO items
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE" "CANCELLED")))

;; Define common tags
(setq org-tag-alist '(("@work" . ?w) ("@home" . ?h) ))

;; Use .txt instead of the default .org
(setq org-agenda-file-regexp "\\`[^.].*\\.txt\\'")

;; Recursively add all files from target directory to agenda
(setq org-agenda-files (apply 'append
			      (mapcar
			       (lambda (directory)
				 (directory-files-recursively
				  directory org-agenda-file-regexp))
			       '("~/ownCloud/Projects" "~/ownCloud/!nbox"))))

;; Set default location for capturing misc notes
(setq org-default-notes-file "~/ownCloud/!nbox/index.txt")

;; Show all TODOs that haven't been scheduled yet
;; (setq org-agenda-custom-commands
;;       '(("c" . "Custom Views")
;;         ("cu" "Unscheduled TODOs"
;;          ((todo ""
;;                 ((org-agenda-overriding-header "\nUnscheduled TODO")
;;                  (org-agenda-skip-function '(org-agenda-skip-entry-if 'timestamp)))))
;;          nil
;;          nil)))

(setq org-agenda-custom-commands
      '(("X" agenda "" nil ("~/ownCloud/!nbox/agenda.html"))
        ("Y" alltodo "" nil ("~/ownCloud/!nbox/todo.html"))))


;; Force DONE items to show up in the agenda view
(setq org-agenda-log-mode-items '(closed clock state))

;; Set a key binding for agenda view
(global-set-key "\C-ca" 'org-agenda)

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
