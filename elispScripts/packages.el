#!/usr/bin/emacs --script

(load-file '"~/.emacs.d/init.el")

(package-refresh-contents)

(package-install 'solarized-theme)
(package-install 'rjsx-mode)
(package-install 'neotree)
(package-install 'all-the-icons)
(package-install 'json-mode)

(all-the-icons-install-fonts)
