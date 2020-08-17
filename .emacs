(message "Let's Get After It. Discipline Equals Freedom")

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)
;; Time in modeline
(display-time-mode 1)
;; package initialize
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

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
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(org-agenda-files (quote ("~/Org/mylife.org")))
 '(org-capture-templates
   (quote
    (("b" "Books To Read" entry
      (file+headline "~/Org/mylife.org" "Books")
      (file "~/Org/templates/tpl-books.txt"))
     ("t" "TODO" entry
      (file+headline "~/Org/mylife.org" "Inbox")
      (file "~/Org/templates/tpl-todo.txt")))))
 '(org-directory "~/Org")
 '(org-habit-show-habits t)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m org-checklist)))
 '(package-selected-package (quote (which-key use-package)))
 '(package-selected-packages
   (quote
    (spacemacs-theme use-package which-key org ebdb beacon bbdb))))
 
 '(org-default-notes-file "~\\Org\\notes.org")
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
