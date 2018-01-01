
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-packages)

(setq ring-bell-function 'ignore)

;; use org
(require 'org)
(setq org-src-fontify-natively t)
(setq org-agenda-file '("/mnt/e/Doc/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

;; set help
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; hide tool bar
(tool-bar-mode -1)
;; hide scrol bar
(scroll-bar-mode -1)
;; ? 
(setq inhibit-splash-screen 1)
;; show row numbers 
(linum-mode 1)

;; define init-file func
(defun open-my-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; binding key 'f1' to open init-file
(global-set-key (kbd "<f1>") 'open-my-init-file)

;; binding key 'C-c TAB' to toggle company mode
(global-set-key (kbd "C-c TAB") 'company-mode)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0.08)

;; diabled auto backup file model
(setq make-backup-files nil)
(setq auto-save-default t)

;; enable recent file mode
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; enable code light
(require 'org)
(setq org-src-fontify-natively 1)

;; enable delete selection mode
(delete-selection-mode 1)

;; Add lisp () hook
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; disable current row light
(global-hl-line-mode 1)

;; abbrev mode
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("8sn" "frankwan")
					    ))

