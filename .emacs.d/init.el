;; Start server
(server-start)

;; Set load path
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lib"))

;; Lua mode
(autoload 'lua-mode "lua-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-hook 'lua-mode-hook 'turn-on-font-lock)
(setq lua-indent-level 2)

;; Javascript mode
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; nxhtml mode
(load (expand-file-name "~/.emacs.d/lib/nxhtml/autostart.el"))

;; magit mode
(require 'magit)
(autoload 'magit-status "magit" nil t)
(global-set-key [(control x) (g)] 'magit-status)

;; set 2 space offset for python
(setq py-indent-offset 2)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-enable-cursor-indications t)
 '(cua-enable-modeline-indications t)
 '(cua-enable-region-auto-help t)
 '(cua-mode t nil (cua-base))
 '(current-language-environment "UTF-8")
 '(global-auto-revert-mode t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(js2-basic-offset 2)
 '(js2-cleanup-whitespace t)
 '(mac-emulate-three-button-mouse t)
 '(mac-input-method-mode t)
 '(mac-key-mode t)
 '(python-indent 2)
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(standard-indent 2)
 '(tab-width 2)
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify))
 '(whitespace-global-mode t)
 '(whitespace-modes (quote (ada-mode asm-mode autoconf-mode awk-mode c-mode c++-mode cc-mode change-log-mode cperl-mode electric-nroff-mode emacs-lisp-mode f90-mode fortran-mode html-mode html3-mode java-mode jde-mode ksh-mode latex-mode LaTeX-mode lisp-mode m4-mode makefile-mode modula-2-mode nroff-mode objc-mode pascal-mode perl-mode prolog-mode python-mode scheme-mode sgml-mode sh-mode shell-script-mode simula-mode tcl-mode tex-mode texinfo-mode vrml-mode xml-mode lua-mode))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "apple" :family "Inconsolata")))))
