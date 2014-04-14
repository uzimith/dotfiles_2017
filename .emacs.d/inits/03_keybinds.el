;;; キーバインド
(define-key global-map (kbd "C-h") 'delete-backward-char)
(define-key global-map (kbd "M-?") 'help-for-help)
(fset 'yes-or-no-p 'y-or-n-p)
