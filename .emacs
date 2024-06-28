(load-theme 'wombat)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode)
(global-display-line-numbers-mode)
(fset 'yes-or-no-p 'y-or-n-p)
(ido-mode)

;; Coding-system settings
(setq default-buffer-file-coding-system 'utf-8)
(setq-default coding-system-for-read 'utf-8)
(setq file-name-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(add-to-list 'default-frame-alist
  '(font . "DejaVu Sans Mono-10"))
