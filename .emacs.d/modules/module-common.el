;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; common appearance settins ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;;;;;;;;;;;;;;;;;;;;;;;;;
;; common misc settins ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

(recentf-mode 1)
(global-hl-line-mode 1)
(global-display-line-numbers-mode)
(setq-default truncate-lines t)

;;;;;;;;;;;;;;;;
;; font setting
;;;;;;;;;;;;;;;;
(add-to-list 'default-frame-alist
             '(font . "Fira Code-14"))

(provide 'module-common)
;;; module-common.el ends here
