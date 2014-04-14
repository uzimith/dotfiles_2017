;;; Yasnippet
(require 'yasnippet)
(custom-set-variables
 '(yas/snippet-dirs '("~/.emacs.d/config/snippets")))
(yas/global-mode t)
(setq yas/prompt-functions '(yas/dropdown-prompt))
(setq yas/trigger-key nil)
;; snippet-mode for *.yasnippet files
(add-to-list 'auto-mode-alist '("\\.yasnippet$" . snippet-mode))

