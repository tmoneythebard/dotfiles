(message "Let's Get After It. Discipline Equals Freedom")
;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Disable tool bar, menu bar and scroll bar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Time in modeline, Visual Line Mode  and Start up Message
(display-time-mode 1)
(global-visual-line-mode t)
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
;;(use-package doom-modeline
 ;; :ensure t
 ;; :init
 ;; (doom-mode-line-mode 1))
;; Doom mode line does not start this is why)
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
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(doom-modeline-mode t)
 '(fci-rule-color "#383838")
 '(mode-line-format (quote ("%e" (:eval (doom-modeline-format--main)))))
 '(org-agenda-files
   (quote
    ("c:/projects/dotfiles/Org/Calender.org" "c:/projects/dotfiles/Org/habits.org" "c:/projects/dotfiles/Org/mylife.org")))
 '(org-capture-templates
   (quote
    (("w" "plot bunny here" entry
      (file+headline "c:/projects/dotfiles/writing/story.org" "")
      "")
     ("T" "Tasks and Appointments")
     ("b" "Books To Read" entry
      (file+headline "c:/projects/dotfiles/Org/mylife.org" "Books")
      (file "c:/projects/dotfiles/Org/templates/tpl-books.txt"))
     ("t" "Todo" entry
      (file+headline "c:/projects/dotfiles/Org/mylife.org" "Inbox")
      (file "c:/projects/dotfiles/Org/templates/tpl-todo.txt"))
     ("a" "Appointment" entry
      (file+olp+datetree "c:\\projects\\dotfiles\\Org\\Calender.org" "Inbox")
      (file "c:\\projects\\dotfiles\\Org\\templates\\tpl-appt.txt")))))
