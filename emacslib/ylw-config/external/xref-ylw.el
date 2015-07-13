;;; xref-ylw.el ---

;; Copyright 2009
;;
;; Author: ylw@ppidellsc1420
;; Contact: xzfkiller@gmail.com
;; Version: $Id: xref.el,v 0.0 2009/04/17 04:47:10 ylw Exp $
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
;;   (require 'xref)

;;; Code:

(provide 'xref-ylw)
(eval-when-compile
  (require 'cl))

;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################

;; Xrefactory configuration part ;;
;; some Xrefactory defaults can be set here
(defvar xref-current-project 'none)  ;; can be also "my_project_name"
(defvar xref-key-binding 'none)	     ;; can be also 'local or 'none
(load "xrefactory")
;; end of Xrefactory configuration part ;;
;;(message "xrefactory loaded")
;;; xref-ylw.el ends here
