(message "Let's Get After It. Discipline Equals Freedom")
;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Disable tool bar, menu bar and scroll bar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Time in modeline and Start up Message
(display-time-mode 1)
(defun display-startup-echo-area-message ()
  (message "Get After It, November Foxtrot Sierra"))
;; package initialize and package list
(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq package-enable-at-startup nil)
(use-package which-key
 :ensure t
 :init
 (which-key-mode))

(use-package beacon
  :ensure t
  :init
  (beacon-mode 1))

;; spacemacs theme
(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))

;;confirm key shortcuts, scroll speed and bell, no backups
(defalias 'yes-or-no-p 'y-or-n-p)

(setq scroll-conservatively 100)

(setq ring-bell-function 'ignore)

(when window-system (global-prettify-symbols-mode t))

(setq make-backup-file nil)
(setq auto-save-default nil)

;;redefining emacs terminal
(defvar my-term-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;org-mode configuration
;; Enable org-mode
(require 'org)
;; Make org-mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(org-agenda-files
   '("~/Projects/dotfiles/Org/habits.org" "~/Projects/dotfiles/Org/mylife.org" "~/Projects/dotfiles/Org/Calender.org"))
 '(org-capture-templates
   '(("b" "Books To Read" entry
      (file+headline "~/Projects/dotfiles/Org/mylife.org" "Books")
      (file "~/Projects/dotfiles/Org/templates/tpl-books.txt"))
     ("t" "TODO" entry
      (file+headline "~/Projects/dotfiles/Org/mylife.org" "Inbox")
      (file "~Projects/dotfiles/Org/templates/tpl-todo.txt"))))
 '(org-directory "~/Projects/dotfiles/Org")
 '(org-habit-show-habits t)
 '(org-modules
   '(org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m org-checklist))
 '(package-selected-package '(which-key use-package))
 '(package-selected-packages
   '(spacemacs-theme use-package which-key org ebdb beacon bbdb)))
 
'(org-default-notes-file "~/Projects/Org/notes.org")
 '(org-refile-targets (quote ((org-agenda-files :level . 2))))
 '(org-scheduled-delay-days 0)
 '(org-scheduled-past-days 365)
 ;; Keep THIS LINE AT THE END TO OPEN FILE LAST
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "unspecified-bg" :foreground "unspecified-fg" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "PfEd" :family "xos4"))))
 '(bold ((t (:weight bold)))))
