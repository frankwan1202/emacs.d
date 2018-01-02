(require 'omnisharp)

(setq omnisharp-server-executable-path "/usr/local/bin/omnisharp/start-omnisharp.sh")

(defun my-csharp-mode-setup ()
  (setq indent-tabs-mode nil)
  (setq c-syntactic-indentation t)
  (c-set-style "ellemtel")
  (setq c-basic-offset 4)
  (setq truncate-lines t)
  (setq tab-width 4)
  (setq evil-shift-width 4)
  (local-set-key (kbd "C-c C-c") 'recompile))

(add-hook 'csharp-mode-hook 'my-csharp-mode-setup t)

(add-hook 'csharp-mode-hook 'omnisharp-mode)

(setq process-connection-type nil)
(setq omnisharp-debug t)

(eval-after-load
    'company
   '(add-to-list 'company-backends 'company-omnisharp))

(provide 'init-omnisharp)
