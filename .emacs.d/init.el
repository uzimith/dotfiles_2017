(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/"))
(package-initialize)

(defvar my/favorite-packages
  '(
    init-loader color-theme
		;; link vim
		evil key-chord evil-numbers evil-leader
		;; for auto-complete
		auto-complete fuzzy popup pos-tip
		;; snippet
		yasnippet
		;; buffer utils
		popwin yascroll tabbar
		;; powerline
		powerline
		;; compile
		quickrun
		;; flymake
		flycheck flymake-jslint
		;; go
		go-mode
		;; python
		jedi
		;; helm
		helm helm-ag helm-c-moccur helm-descbinds helm-gtags helm-migemo wgrep-helm
		;; direx
		direx
		))

(dolist (package my/favorite-packages)
  (unless (package-installed-p package)
    (package-install package)))

(init-loader-load)
