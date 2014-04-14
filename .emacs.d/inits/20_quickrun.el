(require 'quickrun)
(define-key evil-normal-state-map (kbd ", r r") #'quickrun)
(define-key evil-visual-state-map (kbd ", r") #'quickrun-region)
