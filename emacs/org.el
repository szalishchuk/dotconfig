;; Enable org-mode
(require 'org)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'auto-mode-alist '("\\.txt$" . org-mode))

;; Inline images configuration
(load-file "~/.config/emacs/org-images.el")

;; Set a key binding for agenda view
(global-set-key "\C-ca" 'org-agenda)

;; Use .txt instead of the default .org
(setq org-agenda-file-regexp "\\`[^.].*\\.txt\\'")

;; Recursively add all files from target directory to agenda
(setq org-agenda-files (apply 'append
			      (mapcar
			       (lambda (directory)
				 (directory-files-recursively
				  directory org-agenda-file-regexp))
			       '("~/ownCloud"))))



;; Set default location for capturing misc notes
(setq org-default-notes-file "~/ownCloud/!nbox/index.txt")


(setq org-agenda-custom-commands
      '(("X" agenda "" nil ("~/ownCloud/!nbox/agenda.html"))
        ("Y" alltodo "" nil ("~/ownCloud/!nbox/todo.html"))))


;; Configure agenda export settings
(setq org-agenda-exporter-settings
      '((ps-number-of-columns 2)
        (ps-landscape-mode t)
        (org-agenda-add-entry-text-maxlines 5)
        (htmlize-output-type 'css)))



;; Show all TODOs that haven't been scheduled yet
;; (setq org-agenda-custom-commands
;;       '(("c" . "Custom Views")
;;         ("cu" "Unscheduled TODOs"
;;          ((todo ""
;;                 ((org-agenda-overriding-header "\nUnscheduled TODO")
;;                  (org-agenda-skip-function '(org-agenda-skip-entry-if 'timestamp)))))
;;          nil
;;          nil)))


;; (setq org-agenda-custom-commands
;;       '(("X" agenda ""
;;          ((ps-number-of-columns 2)
;;           (ps-landscape-mode t)
;;           (org-agenda-prefix-format " [ ] ")
;;           (org-agenda-with-colors nil)
;;           (org-agenda-remove-tags t))
;;          ("theagenda.ps"))))



;; Define statuses for TODO items
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE" "CANCELLED")))

;; Force DONE items to show up in the agenda view
(setq org-agenda-log-mode-items '(closed clock state))

;; Define common tags
(setq org-tag-alist '(("@work" . ?w) ("@home" . ?h) ))
