;; enable proxy
(require 'module-proxy)
(enable-socks5-proxy)

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; packages to install by user
(setq package-selected-packages '(
  evil
  org
))

;; use this function to install packages
(defun install-my-selected-packages()
  (interactive)
  (package-refresh-contents)
  (package-install-selected-packages))

;; load all my package configs

(add-to-list 'load-path "~/.emacs.d/packs")

(mapc (lambda (name)
        (require (intern (file-name-sans-extension name))))
      (directory-files "~/.emacs.d/packs" nil "\\.el$"))


(provide 'module-packs)
;;; module-packs.el ends here
