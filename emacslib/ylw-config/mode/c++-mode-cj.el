;;; c++-mode-cj.el ---

;; Copyright 2014
;;
;; Author: Jin Chen
;; Contact: xzfkiller@gmail.com
;; Version: $Id: c++-mode.el,v 0.0 2009/04/17 02:59:11 ylw Exp $
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
;;   (require 'c++-mode)

;;; Code:

(provide 'c++-mode-cj)
(eval-when-compile
  (require 'cl))

;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################

;; c++ editing style
(defun my-c++-mode-common-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  (c-set-style "stroustrup")
  ;; (define-key c++-mode-map [f3] 'replace-regexp)
)

(add-hook 'c++-mode-common-hook 'my-c++-mode-common-hook)

(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.H\\'" . c++-mode))
;;; c++-mode-ylw.el ends here
