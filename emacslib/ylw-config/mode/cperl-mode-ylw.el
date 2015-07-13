;;; cperl-mode-ylw.el ---

;; Copyright 2009
;;
;; Author: ylw@ppidellsc1420
;; Contact: xzfkiller@gmail.com
;; Version: $Id: cperl-mode.el,v 0.0 2009/04/17 02:58:15 ylw Exp $
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
;;   (require 'cperl-mode)

;;; Code:

(provide 'cperl-mode-ylw)
(eval-when-compile
  (require 'cl))

;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################

(require 'cperl-mode)
(defalias 'perl-mode 'cperl-mode)

;; Perl mode
(defun my-cperl-mode-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  (define-key cperl-mode-map [(return)] 'newline-and-indent)
  (define-key cperl-mode-map [(backspace)] 'c-hungry-backspace)
  (setq cperl-indent-level 4)
  (setq cperl-continued-statement-offset 4)
)

(add-hook 'cperl-mode-hook 'my-cperl-mode-hook)

(add-to-list 'auto-mode-alist '("\\.pm\\'" . cperl-mode))
(add-to-list 'auto-mode-alist '("\\.pl\\'" . cperl-mode))
;;; cperl-mode-ylw.el ends here
