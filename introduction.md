## Prepare environment.

### Compiler

Install `Clozure CL` referring below:

http://modern-cl.blogspot.jp/

```bash
$ cd ~/opt
$ svn co http://svn.clozure.com/publicsvn/openmcl/release/1.9/linuxx86/ccl
$ cp ccl/scripts/ccl ~/bin/ccl
$ chmod +x ~/bin/ccl
$ CCL_DEFAULT_DECTORY=~/opt/ccl ccl
```

### Quicklisp

```bash
$ curl -O http://beta.quicklisp.org/quicklisp.lisp
$ ccl
```

```lisp
? (load "quicklisp.lisp")
? (quicklisp-quickstart:install :path ".quicklisp/")
? (ql:add-to-init-file)
```

### Slime

```bash
$ cd ~/opt
$ curl -O http://common-lisp.net/project/slime/snapshots/slime-current.tgz
$ tar zxvf slime-current.tgz
$ ln -s ~/opt/slime-* ~/.emacs.d/slime
```

add following to emacss' configuration file.

```lisp
(setq inferior-lisp-program "ccl")
(add-to-list 'load-path (expand-file-name "~/.emacs.d/slime"))
(require 'slime)
(slime-setup '(slime-repl slime-fancy slime-banner))
```

```bash
# create directory for local repository
$ mkdir -p ~/paip/libraries
# register the directory for local repository
$ mkdir -p ~/.config/common-lisp/source-registry.conf.d
$ echo "(:tree (:home \"paip/libraries\"))" >> ~/.config/common-lisp/source-registry.conf.d/01-add-local-lisp.conf
```

```lisp
CL-USER> (ql:quickload :cl-project)
CL-USER> (cl-project:make-project #p"~/paip/libraries/plus/"
  :author "Junpei Tajima"
  :email "p.baleine@gmail.com"
  :license "MIT"
  :depends-on '(:cl-annot))
```

Edit [~/paip/libraries/plus/src/plus.lisp](./libraries/plus/src/plus.lisp).

Edit [テスト](./libraries/plus/t/plus.lisp).

```lisp
CL-USER> (ql:quickload :plus-test)
```

