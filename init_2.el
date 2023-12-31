;; dired sorting flags

(setq dired-listing-switches "-aBhl --group-directories-first")

;; remove bars and fringe

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-startup-screen t)
(set-fringe-mode 0)

;; font size

(set-face-attribute 'default nil :height 130)

;; visible bell

(setq visible-bell t)

;; move between windows with shift arrow keys

(windmove-default-keybindings)

;; single buffer dired

(setq dired-kill-when-opening-new-dired-buffer t)

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(file-info magit moe-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
