;; email-ylw.el ---  ; -*- mode: emacs-lisp -*-

;; Copyright 2008 xzfkiller
;;
;; Author: xzfkiller@gmail.com
;; Version: $Id: gnus-config.el,v 0.0 2008/11/26 17:10:12 Liwei Yuan Exp $
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
;;   (require 'gnus-config)

;;; Code:

(provide 'email-ylw)
(eval-when-compile
  (require 'cl))

;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################

;;;;##########################################################################
;;;;  send mail part via SMTP protocol.
;;;;##########################################################################

;; smtp, Gnus needs set message-send-mail-function to send mail
(setq message-send-mail-function 'smtpmail-send-it)

;; set the smtp-server
(setq smtpmail-smtp-server "smtp.gmail.com")
(setq smtpmail-default-smtp-server "smtp.gmail.com")

(setq user-full-name "xzfkiller")
(setq user-mail-address "xzfkiller@gmail.com")

;; send mail using SMTP on the mail submission port 587
(setq smtpmail-smtp-service 587)

(setq smtpmail-auth-credentials
      '(("smtp.gmail.com"
	 587
	 "xzfkiller@gmail.com"
	 "wuxifudan")))

(setq smtpmail-starttls-credentials
      '(("smtp.gmail.com"
	 587
	 "xzfkiller@gmail.com"
	 "wuxifudan")))

;;;;##########################################################################
;;;;  read mail part via IMAP protocol. IMAP can be viewed as a mail storage
;;;;  protocol.
;;;;##########################################################################

(setq gnus-secondary-select-methods
      '((nnimap "imap.gmail.com"
                (nnimap-address "imap.gmail.com")
                (nnimap-server-port 993)
                (nnimap-stream ssl))))

(setq gnus-parameters
      '(("nnimap+imap.gmail.com.*" (gcc-self . t))))

(setq gnus-fetch-old-headers t)

;; split functionality, don't exactly now its usage, but it seems that
;; I don't need it...

;;(setq nnimap-split-inbox '("INBOX"))
;;(setq nnimap-split-rule 'nnmail-split-fancy)
;;; email-ylw.el ends here
