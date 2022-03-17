;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; add modules to load-path ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/modules")

;;;;;;;;;;;;;;;;;;;;;;;;
;; load local modules ;;
;;;;;;;;;;;;;;;;;;;;;;;;

(mapc (lambda (name)
        (require (intern (file-name-sans-extension name))))
      (directory-files "~/.emacs.d/modules" nil "\\.el$"))

;;; init.el ends here

