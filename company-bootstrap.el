;;; company-bootstrap.el --- A company backend for bootstrap.

;; Copyright (C) 2019 typefo

;; Author: typefo <typefo@hotmail.com>
;; URL: https://github.com/typefo/company-bootstrap
;; Package-Requires: ((emacs "24.3") (company "0.9.10"))
;; Version: 4.3.1

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; This a company backend for twitter bootstrap

;;; Code:

(require 'cl-lib)
(require 'company)
(require 'company-bootstrap-completions)

(defconst company-bootstrap-version "4.3.1")

;;;###autoload
(defun company-bootstrap (command &optional arg &rest ignored)
  "Company backend for Bootstrap."
  (interactive (list 'interactive))
  (cl-case command
    (interactive (company-begin-backend 'company-bootstrap))
    (prefix (company-grab-symbol))
    (candidates
     (cl-remove-if-not
      (lambda (c) (string-prefix-p arg c))
      company-bootstrap-completions)))
  )

;;;###autoload
(defun company-bootstrap-init ()
  "Init company bootstrap backend."
  (interactive)
  (add-to-list 'company-backends 'company-bootstrap)
  )

(provide 'company-bootstrap)

;;; company-bootstrap.el ends here
