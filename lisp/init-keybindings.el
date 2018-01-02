
;; (global-set-key "\C-x\ \C-r" 'recentf-open-files)
(global-set-key (kbd "<f2>") 'recentf-open-files)

;; binding key 'f1' to open init-file
(global-set-key (kbd "<f1>") 'open-my-init-file)

;; set help
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;; binding key 'C-c TAB' to toggle company mode
(global-set-key (kbd "C-c TAB") 'company-mode)

(global-set-key (kbd "C-c p f") 'counsel-git)

(provide 'init-keybindings)
