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
 '(org-agenda-files
   (quote
    ("c:/Users/trava_000/OneDrive/Documents/Org/mylife.org")))
 '(org-capture-templates nil)
 '(org-directory "~/Org")
 '(org-habit-show-habits t)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m org-checklist)))
 '(package-selected-package (quote (which-key use-package)))
 '(package-selected-packages (quote (use-package which-key org ebdb beacon bbdb))))
 '(column-number-mode t)
 '(default
    ((t
      (:inherit nil :stipple nil :background "SystemWindow" :foreground "SystemWindowText" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "outline" :family "OCR A Extended"))))
 '(display-time-mode t)
 '(org-agenda-done ((t (:foreground "ForestGreen" :strike-through "red"))))
 '(org-agenda-files
   (quote
    ("c:/Users/trava_000/OneDrive/Documents/Org/mylife.org")))
 '(org-agenda-skip-additional-timestamps-same-entry nil)
 '(org-agenda-skip-scheduled-if-deadline-is-shown (quote not-today))
 '(org-agenda-skip-timestamp-if-done t)
 '(org-agenda-start-on-weekday 0)
 '(org-capture-bookmark nil)
 '(org-capture-templates
   (quote
    (("b" "Add a Book to Reading List" entry
      (file+headline "c:/Users/trava_000/OneDrive/Documents/Org/mylife.org" "Books")
      (file "~/Org/templates/tpl-books.txt"))
     ("t" "TODO entry" entry
      (file+headline "c:/Users/trava_000/OneDrive/Documents/Org/mylife.org" "Inbox")
      (file "~/Org/templates/tpl-todo.txt")))))
 '(org-checkbox-hierarchical-statistics t)
 '(org-closed-keep-when-no-todo t)
 '(org-deadline-past-days 365)
 '(org-default-notes-file "~\\Org\\notes.org")
 '(org-directory
   "(setq org-directory \"c:/Users/trava_000/OneDrive/Documents/Org\")`")
 '(org-done
   ((t
     (:foreground "ForestGreen" :strike-through t :weight bold))))
 '(org-drawer ((t (:foreground "Blue1"))))
 '(org-enforce-todo-checkbox-dependencies nil)
 '(org-enforce-todo-dependencies t)
 '(org-fontify-done-headline t)
 '(org-fontify-whole-heading-line t)
 '(org-habit-show-habits-only-for-today nil)
 '(org-headline-done ((t (:foreground "dark khaki"))))
 '(org-hide-leading-stars t)
 '(org-hierarchical-todo-statistics t)
 '(org-id-link-to-org-use-id (quote create-if-interactive))
 '(org-id-method (quote org))
 '(org-id-prefix nil)
 '(org-id-track-globally t)
 '(org-level-1 ((t (:inherit outline-1 :family "OCR A"))))
 '(org-log-into-drawer t)
 '(org-log-redeadline (quote time))
 '(org-log-refile (quote note))
 '(org-log-reschedule (quote time))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-id org-info org-irc org-mhe org-rmail org-w3m)))
 '(org-outline-path-complete-in-steps nil)
 '(org-provide-todo-statistics t)
 '(org-refile-targets (quote ((org-agenda-files :level . 2))))
 '(org-scheduled-delay-days 0)
 '(org-scheduled-past-days 365)
 '(org-todo ((t (:foreground "firebrick2" :weight bold))))
 '(org-todo-keyword-faces
   (quote
    (("BOUGHT" . "forestgreen")
     ("REFERENCE" . "forestgreen")
     ("FINISHED" . "forestgreen"))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "NEXT(n)" "SOMEDAY(s)" "WAITING(w)" "|" "CANCELLED(c!)" "DONE(d!)")
     (type "PURCHASED(p)" "PREORDERED(o)" "READING(e)" "LISTENING(l)" "PLAYING(p)" "|" "REFERENCE(r)" "BOUGHT(b)" "FINISHED(f)"))))
;; Keep THIS LINE AT THE END TO OPEN FILE LAST
(find-file "c:/Users/trava_000/OneDrive/Documents/Org/mylife.org")
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "outline" :family "OCR A Extended"))))
 '(bold ((t (:weight bold)))))
