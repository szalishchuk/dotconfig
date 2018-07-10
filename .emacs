;; Enable package management
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Enable org-mode
(require 'org)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'auto-mode-alist '("\\.txt$" . org-mode))

;; Enable wrapping of long-lines
(setq org-startup-truncated nil)

;; Enable copy into system clipboard with visual select
(setq x-select-enable-clipboard t)
(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))
(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))
(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)

;; Define statuses for TODO items
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

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
			       '("~/ownCloud/Projects"))))

;; Show all TODOs that haven't been scheduled yet
(setq org-agenda-custom-commands
      '(("c" . "Custom Views")
        ("cu" "Unscheduled TODOs"
         ((todo ""
                ((org-agenda-overriding-header "\nUnscheduled TODO")
                 (org-agenda-skip-function '(org-agenda-skip-entry-if 'timestamp)))))
         nil
         nil)))

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


(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso)))
 '(org-agenda-files
   (quote
    ("/Users/sviat/ownCloud/Projects/0. Archive/Privalia(To be Archived)/Documents/BA_Docs/Backlog link.txt" "/Users/sviat/ownCloud/Projects/0. Archive/Privalia(To be Archived)/Documents/Discovery_Materials/Plan_A_Meeting Notes/Wireframes_review_meeting_notes (11.26.15).txt" "/Users/sviat/ownCloud/Projects/0. Archive/Privalia(To be Archived)/Source/apps/jira-report-generator/node_modules/request/node_modules/hawk/node_modules/hoek/test/modules/ignore.txt" "/Users/sviat/ownCloud/Projects/0. Archive/Privalia(To be Archived)/Source/apps/jira-report-generator/node_modules/request/node_modules/http-signature/node_modules/sshpk/node_modules/dashdash/LICENSE.txt" "/Users/sviat/ownCloud/Projects/0. Archive/Privalia(To be Archived)/Source/apps/jira-report-generator/node_modules/request/node_modules/performance-now/license.txt" "/Users/sviat/ownCloud/Projects/0. Archive/Privalia(To be Archived)/Source/apps/jira-report-generator/node_modules/request/node_modules/stringstream/LICENSE.txt" "/Users/sviat/ownCloud/Projects/0. Archive/Privalia(To be Archived)/Source/apps/jira-report-generator/node_modules/request/node_modules/tough-cookie/node_modules/punycode/LICENSE-MIT.txt" "/Users/sviat/ownCloud/Projects/0. Archive/Privalia(To be Archived)/Source/modules/frontend-modules-pinguino/app/templates/_VERSION.txt" "/Users/sviat/ownCloud/Projects/0. Archive/Privalia(To be Archived)/Source/sdks/huevos/VERSION.txt" "/Users/sviat/ownCloud/Projects/0. Archive/Privalia(To be Archived)/UC sample data/pmp-uc-catalog-develop-ac3ee91a77f8aaa315610d84e08fe6f6bfefef3b/db/readme.txt" "/Users/sviat/ownCloud/Projects/1. VSQT - Intuity/Goals/goal - obtain B1-B2 US visa.txt" "/Users/sviat/ownCloud/Projects/1. VSQT - Intuity/Goals/goal - onboarding and knowledge transfer.txt" "/Users/sviat/ownCloud/Projects/2. RM/2018.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/apps.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/audio.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/bar.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/browser.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/calendar.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/dotconfig.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/editor.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/email.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/file-management.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/fonts.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/games.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/keyboard.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/launcher.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/packages.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/startup.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/system.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/terminal.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Linux/windows.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/Switch to Firefox.txt" "/Users/sviat/ownCloud/Projects/3. Home/Workflow/emacs.txt" "/Users/sviat/ownCloud/Projects/4. Health/dental.txt" "/Users/sviat/ownCloud/Projects/5. ASMT/index.txt" "/Users/sviat/ownCloud/Projects/6. Exo/Goals/index.txt" "/Users/sviat/ownCloud/Projects/7. Spanish/index.txt" "/Users/sviat/ownCloud/Projects/8. Growth/glossary.txt" "/Users/sviat/ownCloud/Projects/8. Growth/misc.txt" "/Users/sviat/ownCloud/Projects/8. Growth/routines.txt"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
