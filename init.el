;; dired sorting flags

(setq dired-listing-switches "-aBhl --group-directories-first")

;; remove bars

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-startup-screen t)

;; font size

(set-face-attribute 'default nil :height 130)

;; move between windows with shift arrow keys

(windmove-default-keybindings)

;;theme

(custom-set-variables
 '(custom-enabled-themes '(modus-vivendi))
 '(package-selected-packages '(magit)))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)


;; this is a comment
