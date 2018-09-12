;; Enable org-mode
(require 'org)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'auto-mode-alist '("\\.txt$" . org-mode))

;; Enable habits tracking
(add-to-list 'org-modules 'org-habit)

;; Inline images configuration
(load-file "~/.config/emacs/org-images.el")

;; Set a key binding for agenda view
(global-set-key "\C-ca" 'org-agenda)

;; Use .txt instead of the default .org
(setq org-agenda-file-regexp "\\`[^.].*\\.txt\\'")

;; Recursively add all files from target directory to agenda
(setq org-agenda-files
      (directory-files-recursively (format "%s/%s" (getenv "CLOUD") "/Home/Org")
				   org-agenda-file-regexp))

;; Set default location for capturing misc notes
(setq org-default-notes-file (format "%s/%s" (getenv "CLOUD") "/Home/!nbox/index.txt"))

;; Define statuses for TODO items
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "CANCELLED" "DONE")))

;; Force DONE items to show up in the agenda view
(setq org-agenda-log-mode-items '(closed clock state))

;; Prompt for a note when resolving repeated events
(setq org-log-repeat 'note)

;; Define common tags
(setq org-tag-alist '(("@work" . ?w) ("@home" . ?h) ))

;; Load the custom views configuration
(load-file "~/.config/emacs/org-agenda-views.el")
