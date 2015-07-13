;;; c-mode-ylw.el ---

;; Copyright 2009 xzfkiller
;;
;; Author: ylw@ppidellsc1420
;; Contact: xzfkiller@gmail.com
;; Version: $Id: c-mode.el,v 0.0 2009/04/17 02:54:15 ylw Exp $
;; Keywords:
;; X-URL: not distributed yet

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary:

;;

;; Put this file into your load-path and the following into your ~/.emacs:
;;   (require 'c-mode)

;;; Code:

(provide 'c-mode-ylw)
(eval-when-compile
  (require 'cl))

;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################

;; ccmode: these commands got from caole's .emacs file
(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)

;; c/c++ editing style
(defun my-c-mode-common-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  ;; hungry-delete and auto-newline
  (c-toggle-hungry-state 1)
  (hs-minor-mode)
  (setq c-basic-offset 4)
  ;; turn on linum
  (linum)
  ;; binding key
  (define-key c-mode-base-map (kbd "C-c h") 'hs-hide-block)
  (define-key c-mode-base-map (kbd "C-c u") 'hs-show-block)
  (define-key c-mode-base-map [(control \`)] 'hs-toggle-hiding)
  (define-key c-mode-base-map [(return)] 'newline-and-indent)
  ;;(define-key c-mode-base-map [(f7)] 'compile)
  (define-key c-mode-base-map [(meta \`)] 'c-indent-command)
  (define-key c-mode-base-map [(tab)] 'my-indent-or-complete)
  ;;(define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)
  ;;(define-key c-mode-base-map [(meta ?/)] 'hippie-expand)
  (define-key c-mode-base-map [(meta ?/)] 'xref-completion)
  ;;(define-key c-mode-base-map [(shift f6)] 'xref-pop-and-return)
  (define-key c-mode-base-map [(f7)] 'xref-pop-and-return)
  (define-key c-mode-base-map [(f6)] 'xref-push-and-goto-definition)
  (define-key c-mode-base-map [(f8)] 'xref-search-definition-in-tag-file)
  (define-key c-mode-base-map [(shift f8)] 'xref-search-in-tag-file)

  ;; preprocessing setttings
  (setq c-macro-shrink-window-flag t)
  (setq c-macro-preprocessor "cpp")
  (setq c-macro-cppflags " ")
  (setq c-macro-prompt-flag t)
  (setq hs-minor-mode t)
  (setq abbrev-mode t)
  ;; show trial whitespace
  (setq show-trailing-whitespace t)
)

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(add-to-list 'auto-mode-alist '("\\.c\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c-mode))
;;; c-mode-ylw.el ends here
