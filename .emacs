(message "Let's Get After It. Discipline Equals Freedom")

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)
;; Time in modeline
(display-time-mode 1)
;; Enable transient mark mode
(transient-mark-mode 1)
(package-initialize)
(setq package-enable-at-at-startup nil)
;; Backups
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
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
 '(beacon-blink-when-buffer-changes t)
 '(beacon-blink-when-point-moves-vertically 3)
 '(beacon-mode t)
 '(column-number-mode t)
 '(display-line-numbers t)
 '(display-time-mode t)
 '(erc-auto-query (quote frame))
 '(erc-frame-dedicated-flag t)
 '(erc-join-buffer (quote window))
 '(erc-minibuffer-notice nil)
 '(erc-modules
   (quote
    (autojoin button completion fill irccontrols keep-place list match menu move-to-prompt netsplit networks noncommands readonly ring services stamp track)))
 '(erc-nick "tmoneythebard")
 '(erc-nickserv-identify-mode (quote both))
 '(erc-nickserv-passwords (quote ((freenode (("tmoneythebard" . "M@rch262019"))))))
 '(org-agenda-files
   (quote
    ("c:/Users/trava/OneDrive/Documents/Org/mylife.org")))
 '(org-capture-bookmark nil)
 '(org-capture-templates
   (quote
    (("b" "Add a Book to Reading List" entry
      (file+headline "c:/Users/trava/OneDrive/Documents/Org/mylife.org" "Books")
      (file "c:/Users/trava/OneDrive/Documents/Org/templates/tpl-books.txt"))
     ("t" "TODO entry" entry
      (file+headline "c:/Users/trava/OneDrive/Documents/Org/mylife.org" "Inbox")
      (file "c:/Users/trava/OneDrive/Documents/Org/templates/tpl-todo.txt")))))
 '(org-checkbox-hierarchical-statistics t)
 '(org-closed-keep-when-no-todo t)
 '(org-default-notes-file "~\\Org\\notes.org")
 '(org-directory "~/Org")
 '(org-enforce-todo-checkbox-dependencies nil)
 '(org-enforce-todo-dependencies t)
 '(org-fontify-done-headline t)
 '(org-fontify-whole-heading-line t)
 '(org-habit-following-days 7)
 '(org-habit-graph-column 40)
 '(org-habit-preceding-days 21)
 '(org-habit-show-all-today nil)
 '(org-habit-show-habits-only-for-today t)
 '(org-hide-leading-stars t)
 '(org-hierarchical-todo-statistics t)
 '(org-id-link-to-org-use-id (quote create-if-interactive))
 '(org-id-method (quote org))
 '(org-id-prefix nil)
 '(org-id-track-globally t)
 '(org-log-into-drawer t)
 '(org-log-redeadline (quote time))
 '(org-log-reschedule (quote time))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-id org-info org-irc org-mhe org-rmail org-w3m)))
 '(org-provide-todo-statistics t)
 '(org-scheduled-delay-days 0)
 '(org-todo-keyword-faces
   (quote
    (("BOUGHT" . "forestgreen")
     ("REFERENCE" . "forestgreen")
     ("FINISHED" . "forestgreen"))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "NEXT(n)" "IN-PROGRESS(i)" "SOMEDAY(s)" "WAITING(w)" "|" "CANCELLED(c!)" "DONE(d!)")
     (type "PURCHASED(p)" "PREORDERED(o)" "READING(e)" "LISTENING(l)" "PLAYING(p)" "|" "REFERENCE(r)" "BOUGHT(b)" "FINISHED(f)"))))
 '(org-use-property-inheritance t)
 '(package-selected-packages (quote (ebdb which-key beacon ## bbdb)))
 '(ring-bell-function (quote ignore)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "SystemWindow" :foreground "SystemWindowText" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "outline" :family "OCR A Extended"))))
 '(org-agenda-done ((t (:foreground "ForestGreen" :strike-through "red"))))
 '(org-done ((t (:foreground "ForestGreen" :strike-through t :weight bold))))
 '(org-drawer ((t (:foreground "Blue1"))))
 '(org-headline-done ((t (:foreground "dark khaki"))))
 '(org-level-1 ((t (:inherit outline-1 :family "OCR A"))))
 '(org-todo ((t (:foreground "firebrick2" :weight bold)))))
;; Keep THIS FILE AT END.
(find-file "c:/Users/trava/OneDrive/Documents/Org/mylife.org")
