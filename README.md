
Emacs company backend for bootstrap 4 version

# How can I configure to use it?

First you need to enable the company mode in the emacs configuration file

    (add-hook 'after-init-hook 'global-company-mode)

Then add the following content to the emacs configuration file

    (eval-after-load "company"
      '(add-to-list 'company-backends 'company-bootstrap))

# How to enable only in html mode?

Html defaults to `nxml-mode` in emacs, Just add a hook to it

    (add-hook 'nxml-mode-hook '(lambda ()
                (add-to-list 'company-backends 'company-bootstrap)))

