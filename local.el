; カスタマイズ用
;
;;; Ruby on Rails ;;; 
;; Rinari
(add-to-list 'load-path "/home/ishioka/tools/rinari")
(require 'rinari)

;; rhtml
(add-to-list 'load-path "/home/ishioka/tools/rhtml")
(require 'rhtml-mode)

;; Haskell
(load-file (expand-file-name "/usr/share/emacs23/site-lisp/haskell-mode/haskell-site-file.elc"))
(require 'haskell-mode)
(require 'haskell-cabal)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . literate-haskell-mode))
(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))

;; markdown
(load-file (expand-file-name "/home/ishioka/.emacs.d/modules/markdown-mode/markdown-mode.el"))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(custom-set-faces
 '(markdown-header-face-1 ((t (:inherit org-level-1))))
 '(markdown-header-face-2 ((t (:inherit org-level-2))))
 '(markdown-header-face-3 ((t (:inherit org-level-3))))
 '(markdown-header-face-4 ((t (:inherit org-level-4))))
 '(markdown-header-face-5 ((t (:inherit org-level-5))))
 '(markdown-header-face-6 ((t (:inherit org-level-6))))
)
;; load environment value
(load-file (expand-file-name "~/.emacs.d/shellenv.el"))
(dolist (path (split-string (getenv "PATH") ":"))
  (add-to-list 'exec-path path))

;;; Twittering-mode
(load-file (expand-file-name "~/.emacs.d/modules/twittering-mode/twittering-mode.el"))
(require 'twittering-mode)
(setq twittering-use-master-password t)

;; ブラウザの設定
(setq browse-url-browser-function 'browse-url-generic)
(setq browse-url-generic-program 
      (if (file-exists-p "/usr/bin/chromium")
          "/usr/bin/chromium" "/usr/bin/google-chrome"))

;; rabbit-mode
;(unless (my:dpkg-status 'rabbit-mode)
;  (el-get 'sync '(rabbit-mode)))
;(autoload 'rabbit-mode "rabbit-mode" "major mode for Rabbit" nil t)
;(add-to-list 'auto-mode-alist
;             '("\\.\\(rbt\\|rab\\)$" . rabbit-mode))

;; Undo-tree
;(require 'undo-tree)
;(global-undo-tree-mode)

(provide 'local)


