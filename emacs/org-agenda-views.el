(setq org-agenda-custom-commands nil)

;; All uncompleted items without a due date
(add-to-list 'org-agenda-custom-commands
	     '("u" "Unscheduled TODOs"
	       ((todo ""
		      ((org-agenda-overriding-header "\nUnscheduled TODO")
		       (org-agenda-skip-function '(org-agenda-skip-entry-if 'timestamp 'todo '("CANCELLED" "DONE"))))))) t)

;; All tasks grouped by priority
(add-to-list 'org-agenda-custom-commands
	     '("p" "All Tasks (grouped by Priority)"

	       ((tags-todo "PRIORITY=\"\""
                           ((org-agenda-overriding-header "NONE")
                            (org-agenda-skip-function '(org-agenda-skip-entry-if 'deadline 'scheduled 'todo '("WAITING" "CANCELLED" "DONE")))))

		(tags-todo "PRIORITY={A}"
                           ((org-agenda-overriding-header "HIGH")
                            (org-agenda-skip-function '(org-agenda-skip-entry-if 'deadline 'scheduled 'todo '("WAITING" "CANCELLED" "DONE")))))
		(tags-todo "PRIORITY={B}"
                           ((org-agenda-overriding-header "MEDIUM")
                            (org-agenda-skip-function '(org-agenda-skip-entry-if 'deadline 'scheduled 'todo '("WAITING" "CANCELLED" "DONE")))))
		(tags-todo "PRIORITY={C}"
                           ((org-agenda-overriding-header "LOW")
                            (org-agenda-skip-function '(org-agenda-skip-entry-if 'deadline 'scheduled 'todo '("WAITING" "CANCELLED" "DONE")))))
                (todo "DONE|CANCELLED"
                      ((org-agenda-overriding-header "COMPLETED")
                       (org-agenda-sorting-strategy '(priority-down)))))) t)

;; (setq org-agenda-custom-commands
;;       '(("X" agenda "" nil (format "%s/%s" (getenv "CLOUD") "/Home/!nbox/agenda.html"))
;;         ("Y" alltodo "" nil (format "%s/%s" (getenv "CLOUD") "/Home/!nbox/todo.html"))))


;; Configure agenda export settings
;; (setq org-agenda-exporter-settings
;;       '((ps-number-of-columns 2)
;;         (ps-landscape-mode t)
;;         (org-agenda-add-entry-text-maxlines 5)
;;         (htmlize-output-type 'css)))


;; (setq org-agenda-custom-commands
;;       '(("X" agenda ""
;;          ((ps-number-of-columns 2)
;;           (ps-landscape-mode t)
;;           (org-agenda-prefix-format " [ ] ")
;;           (org-agenda-with-colors nil)
;;           (org-agenda-remove-tags t))
;;          ("theagenda.ps"))))
