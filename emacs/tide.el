(defun setup-tide-mode ()
  (interactive)
  (tide-setup)

  (flycheck-mode +1)
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1)


  ; Setup user preferences
  ; TODO - ensure indentation settings also apply to .tsx files
  (setq typescript-indent-level                               2
        typescript-expr-indent-offset                         2
        indentSize                                            2
        tabsize                                               2
        convertTabsToSpaces                                   t
        insertSpaceAfterCommaDelimiter                        t
        insertSpaceAfterSemicolonInForStatements              t
        insertSpaceBeforeAndAfterBinaryOperators              t
        insertSpaceBeforeTypeAnnotation                       t
        insertSpaceAfterFunctionKeywordForAnonymousFunctions  t
        placeOpenBraceOnNewLineForFunctions                   nil
        company-tooltip-align-annotations                     t ; Aligns annotation to the right hand side
        flycheck-check-syntax-automatically                   '(save idle-change mode-enabled)
        flycheck-auto-change-delay                            1.5
        tide-sync-request-timeout                             0
        tide-completion-detailed                              t
        tide-always-show-documentation                        t
        tide-hl-identifier-idle-time                          0
        whitespace-line-column                                120 ;; max line length
        whitespace-style                                      '(face lines-tail trailing))

  ;; Customize shortcuts - act on focus
  (local-set-key (quote [f1])  'tide-documentation-at-point) ; Show documentation for the symbol at point
  (local-set-key (quote [f2])  'tide-rename-symbol) ; Rename all occurrences of the symbol at point
  (local-set-key (quote [f3])  'tide-format) ; Format the current region or buffer
  (local-set-key (quote [f4])  'tide-fix) ; Apply code fix for the error at point. When invoked with a prefix arg, apply code fix for all the errors in the file that are similar to the error at point.
  (local-set-key (quote [f5])  'tide-error-at-point) ; Show details of the error at point
  (local-set-key (quote [f6])  'tide-jsdoc-template) ; Insert JSDOC comment template at point
  (local-set-key (quote [f9])  'tide-references) ; List all references to the symbol at point in a buffer. References can be navigated using n and p. Press RET to open the file.
  (local-set-key (quote [f11]) 'tide-jump-back) ; Return to your pre-jump position.
  (local-set-key (quote [f12]) 'tide-jump-to-definition) ; Jump to the definition of the symbol at point. With a prefix arg, Jump to the type definition.

  ;; Customize shortcuts - act on file
  (local-set-key (kbd "<C-f1>") 'tide-organize-imports) ; Organize imports in the file
  (local-set-key (kbd "<C-f2>") 'tide-rename-file) ; Rename current file and all it's references in other files
  (local-set-key (kbd "<C-f5>") 'tide-project-errors) ; List all errors in the project. Errors can be navigated using n and p. Press RET to open the file.

)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook 
          '(lambda ()
            (setq js-indent-level 2)
            (setq indent-tabs-mode nil)
            (setq web-mode-markup-indent-offset 2)
            (setq web-mode-css-indent-offset 2)
            (setq web-mode-code-indent-offset 2)
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))

;; enable typescript-tslint checker
(require 'flycheck)
(flycheck-add-mode 'typescript-tslint 'web-mode)


;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook #'setup-tide-mode)



;; TODO - Replace the initialization code above with use-package invokations

;; Ensure typescript-mode package availability
;; (use-package typescript-mode :ensure t :pin melpa
;;   :mode (("\\.ts\\'" . typescript-mode))
;;   :hook ((typescript-mode . setup-tide-mode)
;; 	 (typescript-mode . tide-h1-identifier-mode)
;; 	 (before-save . tide-format-before-save)))

;; Ensure web-mode package availability
;; (use-package web-mode :ensure t :pin melpa
;;   :mode (("\\.tsx\\'" . web-mode))
;;   :hook ((typescript-mode . setup-tide-mode)
;; 	 (typescript-mode . tide-h1-identifier-mode)
;; 	 (before-save . tide-format-before-save))
;;          (web-mode . (lambda () (when (string-equal "tsx" (file-name-extension buffer-file-name)) (setup-tide-mode)))))

;; Ensure tide package availability
;; (use-package tide :ensure t :pin melpa :delight
;;   :after (typescript-mode web-mode company flycheck)
;;   :commands (tide-setup))
