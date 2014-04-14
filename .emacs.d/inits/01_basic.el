;日本語
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

;; font
 (set-face-attribute 'default nil
             :family "Ricty" ;; font
             :height 150)    ;; font size
(set-fontset-font
 nil 'japanese-jisx0208
  (font-spec :family "Ricty"))

(setq face-font-rescale-alist
      '((".*Hiragino_Kaku_Gothic_ProN.*" . 1.2)))
;;; *.~ やのバックアップファイルを作らない
(setq make-backup-files nil)
;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)
;;; メニューバーを消す
(menu-bar-mode -1)
(tool-bar-mode -1)
;;; 起動画面なし
(setq inhibit-startup-message t)
;; Color
(if window-system (progn
   (set-background-color "Black")
   (set-foreground-color "LightGray")
   (set-cursor-color "Gray")
   (set-frame-parameter nil 'alpha 80)
   ))

;;; 画像ファイルを表示
(auto-image-file-mode t)
;;; 最大
(set-frame-parameter nil 'fullscreen 'maximized)
;;; evalした結果を全部表示
(setq eval-expression-print-length nil)

;;; 対応する括弧を光らせる。
(show-paren-mode 1)
;;; ウィンドウ内に収まらないときだけ括弧内も光らせる。
(setq show-paren-style 'mixed)


;;; 現在行を目立たせる
(global-hl-line-mode)
(setq hl-line-face 'underline)

;;; カーソルの位置が何文字目かを表示する
(column-number-mode t)

;;; カーソルの位置が何行目かを表示する
(line-number-mode t)

;;; カーソルの場所を保存する
(require 'saveplace)
(setq-default save-place t)

;;; 最終行に必ず一行挿入する
;(setq require-final-newline t)

;;; 補完時に大文字小文字を区別しない
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;;; 補完可能なものを随時表示
;;; 少しうるさい
(icomplete-mode 1)

;;; 履歴数を大きくする
(setq history-length 10000)

;;; ミニバッファの履歴を保存する
(savehist-mode 1)

;;; 最近開いたファイルを保存する数を増やす
(setq recentf-max-saved-items 10000)

;;; diredを便利にする
(require 'dired-x)

;;; linum
(require 'linum)
(global-linum-mode t)
(setq linum-format "%5d  ")
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))

;;エラー音をなくす
(setq visible-bell t)

;;; ファイル名が重複していたらディレクトリ名を追加する。
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; ido-mode
(require 'ido)
(ido-mode t)
(cua-mode t)
(setq cua-enable-cua-keys nil)

;;path
(load-file (expand-file-name "~/.emacs.d/shellenv.el"))
(dolist (path (reverse (split-string (getenv "PATH") ":")))
  (add-to-list 'exec-path path))
(add-to-list 'exec-path "/usr/local/opt/ruby/bin")

(cd "~/")
