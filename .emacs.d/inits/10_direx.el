(require 'direx)
(define-key evil-normal-state-map (kbd ", f i") #'direx:jump-to-directory-other-window)

(setq dired-dwim-target t)
