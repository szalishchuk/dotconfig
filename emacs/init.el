;; Enable package management
(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-refresh-contents)

;; Ensure installation of use-package
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

;; Enable use-package that will ensure installation of other packages
(require 'use-package)
(require 'use-package-ensure)
(setq use-package-always-ensure t)

(use-package auto-package-update
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

;; Extract path variables from shell
(exec-path-from-shell-copy-env "CLOUD")

;; Provision the runtime with the extracted variables
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Line numbers settings
(load-file "~/.config/emacs/linum.el")

;; Enable evil-mode and related configuration
(use-package evil
  ;; Enable tab in normal mode
  :init (setq evil-want-C-i-jump nil)
  :config (evil-mode 1))

(use-package xclip
  :load-path "~/.config/emacs/packages/xclip-1.9.el"
  :config (xclip-mode 1))


;; Enable org-mode and related configuration
(load-file "~/.config/emacs/org.el")

;; Enable typescript support in appropriate files with tide
(load-file "~/.config/emacs/tide.el")

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

;; Store all auto-save files in one directory
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/saves/" t)))

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
 '(package-selected-packages
   (quote
    (company web-mode tide indium exec-path-from-shell xclip evil htmlize))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
