(require 'auto-complete)
(add-to-list 'ac-dictionary-directories
             "~/.emacs.d/config/dict"
)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

(setq ac-delay 0)
(setq ac-auto-show-menu 0.3)
(define-key ac-completing-map "\t" 'ac-complete)

(ac-set-trigger-key "TAB")
(setq ac-auto-start t)
;; 大文字・小文字を区別しない
(setq ac-ignore-case t)
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face nil)
(set-face-background 'ac-selection-face "steelblue")

;; C-c /でファイル名補完
(global-set-key (kbd "C-c /") 'ac-complete-filename)
(push 'ac-source-filename ac-sources)
