
Emacs company backend for bootstrap 4 version

# how to install?

### Manual installation

1. Download this package

```
$ git clone https://github.com/typefo/company-bootstrap.git
```

2. Copy it to the emacs autoload directory

```
$ cp -R company-bootstrap ~/.emacs.d/lisp
```

### Use the elpa repository to automate installation

1. Edit your ~/.emacs configuration file and Add a repository source for emacs

```
(add-to-list 'package-archives
         '("elpa" . "https://elpa.typefo.com/packages/") t)
```

2. Use the `Alt + x` key, Execute the `package-install` command in Emacs to install

```
M-x> package-install
Install package: company-bootstrap
```

# How can I configure to use it?

First you make sure you have the `company` package installed

```
(add-hook 'after-init-hook 'global-company-mode)
```

Then add the following content to the emacs configuration file

```
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-bootstrap))
```

# How to enable only in html mode?

Html defaults to `nxml-mode` in emacs, Just add a hook to it

```
(add-hook 'nxml-mode-hook '(lambda ()
            (add-to-list 'company-backends 'company-bootstrap)))
```
