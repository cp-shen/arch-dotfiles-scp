(if (not (package-installed-p 'evil))
  (display-warning 'pack-evil "not satisfied")

  ;; Enable Evil
  (setq evil-want-C-i-jump nil)
  (require 'evil)
  (evil-mode 1)
  )

(provide 'pack-evil)
