;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Davis Schenkenberger"
      user-mail-address "davisschenk@gmail.com")
  
(setq! doom-user-dir "~/dotfiles/.doom.d")
(setq! projectile-project-search-path '("~/Developer/Work" "~/Developer/Personal" ("~/Developer/School" . 2)))

;;
;;; Theme
(setq doom-theme 'doom-one)
(setq display-line-numbers-type 'relative)



;;
;;; Modules

;;; :editor evil
;; Implicit /g flag on evil ex substitution, because I use the default behavior
(setq evil-ex-substitute-global t)

;;; :lang org
(setq org-directory "~/Developer/Notes")

;;; :tools lsp
(after! lsp
  (setq! lsp-auto-guess-root t
         lsp-prefer-flymake nil))

(after! lsp-ui
  (setq! lsp-ui-sideline-enable nil))

;;; lang: python
(with-eval-after-load 'eglot
   (add-to-list 'eglot-server-programs
                '(python-mode . ("ruff-lsp"))))
