;; enable proxy
(require 'module-proxy)
(enable-socks5-proxy)

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Download org
(unless (package-installed-p 'org)
  (package-install 'org))

(provide 'module-packs)
;;; module-packs.el ends here
