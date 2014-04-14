;; popwin
(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

;; (push '("*Helm Find Files*" :height 30) popwin:special-display-config)
(push '("*helm M-x*" :height 30) popwin:special-display-config)
(push '("*eshell*" :height 30) popwin:special-display-config)
(push "*Shell Command Output*" popwin:special-display-config)
(push '(compilation-mode :noselect t) popwin:special-display-config)
(push '(direx:direx-mode :position left :width 40 :dedicated t)
      popwin:special-display-config)
