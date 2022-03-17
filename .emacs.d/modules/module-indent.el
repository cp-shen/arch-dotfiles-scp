(defun my-c-mode-common-hook ()
  "My customizations for all of 'c-mode, 'c++-mode, 'objc-mode, 'java-mode."
  (c-set-offset 'substatement-open 0)
 
  (setq c++-tab-always-indent t)
  (setq c-basic-offset 4)                  ;; Default is 2
  (setq c-indent-level 4)                  ;; Default is 2
 
  (setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
  (setq tab-width 4)
  (setq c-default-style "linux"))

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(setq-default indent-tabs-mode nil)

(provide 'module-indent)
;;; module-indent.el ends here
