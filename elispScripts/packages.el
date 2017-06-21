#!/usr/bin/emacs --script

(require 'package)
(package-initialize)

(package-refresh-contents)

(package-install 'solarized-theme)
(package-install 'rjsx-mode)
(package-install 'neotree)
(package-install 'all-the-icons)
(package-install 'json-mode)
(package-install 'flycheck)
(package-install 'web-mode)
(package-install 'auto-complete)

(all-the-icons-install-fonts)
