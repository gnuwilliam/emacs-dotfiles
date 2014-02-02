;; .emacs - William Oliveira <sudowilliam@gmail.com>

;; color theme
(load-theme 'deeper-blue t)

;; remove toolbars
(tool-bar-mode 0)
(menu-bar-mode 0)

;; don't show the scroll bar
(scroll-bar-mode nil)

;; disable backup
(setq backup-inhibited t)
;; disable auto save
(setq auto-save-default nil)

;; Remove auto add line after save
(setq mode-require-final-newline nil)

;; ido-mode
(require 'ido)
(ido-mode t)

;; initialize in ~/ directory
(setq default-directory "~/")

;; auto complete load
(add-to-list 'load-path "/Users/william/.emacs.d/auto-complete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/Users/william/.emacs.d/auto-complete//ac-dict")
(ac-config-default)
(global-auto-complete-mode t)

;; always use spaces, not tabs, when indenting
(setq indent-tabs-mode nil)

;; 2 spaces indenting
(setq-default tab-width 2)

;; show the current line and column numbers in the stats bar as well
(line-number-mode t)
(column-number-mode t)

;; make sure transient mark mode is enabled (it should be by default,
;; but just in case)
(transient-mark-mode t)

;; turn on mouse wheel support for scrolling
(require 'mwheel)
(mouse-wheel-mode t)

;; text decoration
(require 'font-lock)
(setq font-lock-maximum-decoration t)
(global-font-lock-mode t)
(global-hi-lock-mode nil)
(setq jit-lock-contextually t)
(setq jit-lock-stealth-verbose t)

;; if there is size information associated with text, change the text
;; size to reflect it
(size-indication-mode t)

;; highlight parentheses when the cursor is next to them
(require 'paren)
(show-paren-mode t)

;; language modes

(add-to-list 'load-path "/Users/william/.emacs.d/markdown-mode/")
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; scheme interpreter path
(setenv "MITSCHEME_LIBRARY_PATH"  "/Applications/mit-scheme.app/Contents/Resources")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js-indent-level 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; lisp indentation
(add-hook 'lisp-mode-hook '(lambda ()
  (local-set-key (kbd "RET") 'newline-and-indent)))

;; setup load-path and autoloads
(add-to-list 'load-path "/Users/william/.emacs.d/slime")
(require 'slime-autoloads)
;; Set your lisp system and, optionally, some contribs
(setq slime-contribs '(slime-fancy))

;; set default font
(set-default-font "Monaco 12")
