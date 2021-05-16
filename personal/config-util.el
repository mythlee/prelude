;;
(setq tramp-default-method "ssh")

(add-to-list 'load-path "~/.emacs.d/pkg/advance-words-count")
(require 'advance-words-count)
(setq words-count-messages-display 'pos-tip)
