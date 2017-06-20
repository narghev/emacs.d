(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Init Confs
    (setq apropos-sort-by-scores t)
    ;; Disable the bars
        (scroll-bar-mode -1)
        (tool-bar-mode -1)
        (menu-bar-mode -1) 

;; Packages
    (package-initialize)

;; themes
    (load-theme 'solarized-dark t)

;; Modes
    ;; rjsx-mode (react)
        (add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
    ;; ido-mode
        (ido-mode t)
        (require 'ido)
        (setq ido-enable-flex-matching t)

;; Interface packages
    (require 'neotree)
    (require 'all-the-icons)
    (global-set-key [f8] 'neotree-toggle)
    (setq neo-theme (if (display-graphic-p) 'icons 'arrow))








;; Required package names
;; solarized-theme
;; rjsx-mode
;; neotree
;; all-the-icons        !!!! ---> after which run M-x all-the-icons-install-fonts
