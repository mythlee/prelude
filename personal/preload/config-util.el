;;;

;;(setq default-frame-alist '((height . 45) (width . 120)))
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(width . 120))

(load "ess-autoloads")
(load "julia-mode-autoloads")
(require 'ess-site)
(require 'ess)
(require 'julia-mode)
(require 'julia-repl)

(add-hook 'julia-mode-hook 'julia-repl-mode)
(setq inferior-julia-program-name "/usr/local/bin/julia")
