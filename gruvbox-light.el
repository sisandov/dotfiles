(require 'modus-themes)
(setq fore "#3c3836")
(setq back "#fbf1c7")
(setq modus-operandi-palette-overrides
      '(;; (bg-main "#000000")
        (fg-main "#3c3836")
        (bg-main "#fbf1c7")
        (fg-mode-line-active bg-main)
        (bg-mode-line-active fg-main)
        (fg-mode-line-inactive f)
        (bg-mode-line-inactive bg-main)
        ))
(load-theme 'modus-operandi :no-confirm)
(set-face-foreground 'vertical-border "#3c3836")
(set-face-attribute 'mode-line nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)
