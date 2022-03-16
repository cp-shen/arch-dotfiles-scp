;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; socks5 proxy settings ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun enable-socks5-proxy ()
  (interactive)
  (progn
    (setq socks-noproxy '("127.0.0.1"))
    (setq socks-server '("Default server" "127.0.0.1" 7891 5))
    (setq url-gateway-method 'socks)))

(provide 'module-proxy)
;;; module-proxy.el ends here
