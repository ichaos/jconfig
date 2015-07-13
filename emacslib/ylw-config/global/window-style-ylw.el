;;; window-style-ylw.el ---

;; Copyright 2009
;;
;; Author: ylw@ppidellsc1420
;; Contact: xzfkiller@gmail.com
;; Version: $Id: window-style.el,v 0.0 2009/04/17 03:01:57 ylw Exp $
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
;;   (require 'window-style)

;;; Code:

(provide 'window-style-ylw)
(eval-when-compile
  (require 'cl))

;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################

;; set the emacs window when loaded
(setq initial-frame-alist '((top . 0) (left . 0) (width . 137) (height . 57)))
;;(defun w32-restore-frame  () "Restore a minimized frame()"  (interactive) (w32-send-sys-command 61728))
;;(defun w32-maximize-frame () "Maximzie the current frame()" (interactive) (w32-send-sys-command 61488))

;; turn on font-lock mode
(global-font-lock-mode t)

;; enable visual feedback on selections
(setq-default transient-mark-mode t)

;; always end a file with a newline
(setq require-final-newline t)

;; stop at the end of the file, not just add lines
(setq next-line-add-newlines nil)

;; no scroll bar
;;(set-scroll-bar-mode nil)

;; show trial whitespace
(setq show-trailing-whitespace t)

(when window-system
  ;; enable wheelmouse support by default
  (mwheel-install)
  (mouse-wheel-mode t)
  ;; use extended compound-text coding for X clipboard
  (set-selection-coding-system 'compound-text-with-extensions)
)

;; set the search range of semantic for project ;-)
(setq semanticdb-project-roots 	(list(expand-file-name "/")))

;; the following is the debugging settings using gdb
(setq gdb-many-windows t)
;; this enable gud many windows debug
;;(load-library "multi-gud.el")
;;(load-library "multi-gdb-ui.el")

;; cancel the bell... it is noisy..
(setq visible-bell t)
;; instead of yes-or-no, I like to input y/n
(fset 'yes-or-no-p 'y-or-n-p)
;; why not displaying time for
(display-time)
;; show me the column number...
(column-number-mode t)
;; show the matched parenthese, that's cool
(show-paren-mode t)

;; speedup the scrolling in a large file
(setq lazy-lock-defer-on-scrolling t)
(setq font-lock-maximum-decoration t)

;;; window-style-ylw.el ends here
