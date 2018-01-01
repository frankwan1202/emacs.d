
(setq ring-bell-function 'ignore)


;; diabled auto backup file model
(setq make-backup-files nil)
(setq auto-save-default t)

;; enable recent file mode
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)


;; Add lisp () hook
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; abbrev mode
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("8sn" "frankwan")
					    ))


;; enable delete selection mode
(delete-selection-mode 1)

;; show row numbers 
(global-linum-mode 1)

(provide 'init-better-defaults)

