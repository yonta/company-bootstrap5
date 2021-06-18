;;; company-bootstrap5.el --- A company backend for bootstrap5.

;; Copyright (C) 2019 typefo
;;               2021 SAITOU Keita

;; Author: SAITOU Keita <keita44.f4@gmail.com>
;; URL: https://github.com/yonta/company-bootstrap5
;; Package-Requires: ((emacs "24.3") (company "0.9.10"))
;; Version: 5.0.1

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

;; This a company backend for bootstrap5

;;; Code:

(require 'cl-lib)
(require 'company)
(require 'company-bootstrap5-completions)

(defconst company-bootstrap5-version "5.0.1")

;;;###autoload
(defun company-bootstrap5 (command &optional arg &rest ignored)
  "Company backend for Bootstrap5."
  (interactive (list 'interactive))
  (cl-case command
    (interactive (company-begin-backend 'company-bootstrap5))
    (prefix (company-grab-symbol))
    (candidates
     (cl-remove-if-not
      (lambda (c) (string-prefix-p arg c))
      company-bootstrap5-completions)))
  )

;;;###autoload
(defun company-bootstrap5-init ()
  "Init company bootstrap5 backend."
  (interactive)
  (add-to-list 'company-backends 'company-bootstrap5)
  )

(provide 'company-bootstrap5)

;;; company-bootstrap5.el ends here
