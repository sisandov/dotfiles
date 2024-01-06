;; dired sorting flags

(setq dired-listing-switches "-aBhl --group-directories-first")

;; remove bars and fringe

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-startup-screen t)
(set-fringe-mode 1)

;; font size

(set-face-attribute 'default nil :height 130)

;; visible bell

(setq visible-bell t)

;; move between windows - updated keybindings

(global-set-key (kbd "C-M-k") 'windmove-left)
(global-set-key (kbd "C-M-;") 'windmove-right)
(global-set-key (kbd "C-M-o") 'windmove-up)
(global-set-key (kbd "C-M-l") 'windmove-down)

;; previous and next buffer bindings

(global-set-key (kbd "<f1>") 'previous-buffer)
(global-set-key (kbd "<f2>") 'next-buffer)

;; single buffer dired

(setq dired-kill-when-opening-new-dired-buffer t)

;; M-x

(icomplete-vertical-mode)

;; better buffer list

(global-set-key "\C-x\C-b" 'electric-buffer-list)

;; packages

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

;; theme

(use-package moe-theme)
(load-theme 'moe-light t)

(use-package magit)

(use-package file-info)

(use-package treemacs)

(use-package smartparens)
(smartparens-global-mode t)
