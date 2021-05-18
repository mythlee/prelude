
(require 'yasnippet)
(yas-global-mode 1)

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))

(use-package modern-cpp-font-lock
  :ensure t)

(defun code-compile ()
  (interactive)
  (unless (file-exists-p "Makefile")
    (set (make-local-variable 'compile-command)
         (let ((file (file-name-nondirectory buffer-file-name)))
           (format "%s -o %s %s"
                   (if  (equal (file-name-extension file) "cpp") "g++" "gcc" )
                   (file-name-sans-extension file)
                   file)))
    (compile compile-command)))

(global-set-key [f9] 'code-compile)

