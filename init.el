(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package on non-Linux platforms

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-startup-screen t)
(set-fringe-mode 1)
(use-package moe-theme)
(load-theme 'moe-light t)
(set-face-attribute 'default nil :height 130)

(setq dired-listing-switches "-aBhl --group-directories-first")
(setq visible-bell t)
(setq dired-kill-when-opening-new-dired-buffer t)
(icomplete-vertical-mode)

(global-set-key (kbd "C-M-k") 'windmove-left)
(global-set-key (kbd "C-M-;") 'windmove-right)
(global-set-key (kbd "C-M-o") 'windmove-up)
(global-set-key (kbd "C-M-l") 'windmove-down)

(global-set-key (kbd "<f1>") 'previous-buffer)
(global-set-key (kbd "<f2>") 'next-buffer)

(global-set-key "\C-x\C-b" 'electric-buffer-list)

(use-package magit)

(use-package file-info)

(use-package treemacs)

(use-package smartparens)
(smartparens-global-mode t)
