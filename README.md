# company-bootstrap5

Emacs company backend for bootstrap5.

## Screenshot

![Screenshot](https://raw.githubusercontent.com/yonta/company-bootstrap5/master/company-bootstrap5.png)

## How to install

### Manual installation

1. Download this package

```console
$ git clone https://github.com/yonta/company-bootstrap5.git
```

2. Copy it to the emacs autoload directory

```console
$ cp -R company-bootstrap5 ~/.emacs.d/lisp
```

## How to use

First you make sure you have the `company` package installed

```emacs-lisp
(add-hook 'after-init-hook 'global-company-mode)
```

Then add the following content to the emacs configuration file

```emacs-lisp
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-bootstrap5))
```

## How to use only in some mode

If you want to use this mode only in `web-mode`, just like this

```emacs-lisp
(add-hook 'web-mode-hook '(lambda ()
          (add-to-list 'company-backends 'company-bootstrap5)))
```

In other way, if you use `web-mode` and `company-web-html`, just like this

``` emacs-lisp
(add-to-list `company-backends
             `(company-web-html :with company-bootstrap5))
```

## Limitation

Negative margins is not supported by this.
Because Bootstrap5 disable it in default.

For example, this mode does not complete like `mt-md-n3`.

## Original repository

This repository is fork repository from
[company-bootstrap](https://github.com/typefo/company-bootstrap).
Original is made by typefo.
