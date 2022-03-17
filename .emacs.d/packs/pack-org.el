(if (not (package-installed-p 'org (list 9 5 2)))
  (display-warning 'pack-org "not satisfied")

  ;; Configs:
  (setq org-log-done 'time)
  )

(provide 'pack-org)
