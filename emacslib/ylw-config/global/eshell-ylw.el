;; eshell-ylw.el ---  ; -*- mode: emacs-lisp -*-

;; Copyright 2008 xzfkiller
;;
;; Author: xzkiller@gmail.com
;; Version: $Id: eshell-config.el,v 0.0 2008/11/30 06:22:01 Liwei Yuan Exp $
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
;;   (require 'eshell-config)

;;; Code:

(provide 'eshell-ylw)
(eval-when-compile
  (require 'cl))

;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################

(defalias 'eshell/vi 'find-file)
(defun eshell/clear ()
  "ylw's clear command under eshell"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))
;;; eshell-ylw.el ends here
