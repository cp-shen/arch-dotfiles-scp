(if (not (package-installed-p 'kaolin-themes))
  (display-warning 'pack-kaolin-themes "not satisfied")

  ;; Configs:
  (load-theme 'kaolin-dark t)
  )

(provide 'pack-kaolin-themes)
