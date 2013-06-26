# 環境準備

## 処理系準備

http://modern-cl.blogspot.jp/

を参考に、Clozure CLをインストール

```bash
$ cd ~/opt
$ svn co http://svn.clozure.com/publicsvn/openmcl/release/1.9/linuxx86/ccl
$ cp ccl/scripts/ccl ~/bin/ccl
$ chmod +x ~/bin/ccl
$ CCL_DEFAULT_DECTORY=~/opt/ccl ccl
```

## Quicklisp導入

```bash
$ curl -O http://beta.quicklisp.org/quicklisp.lisp
$ ccl
```

```lisp
? (load "quicklisp.lisp")
? (quicklisp-quickstart:install :path ".quicklisp/")
? (ql:add-to-init-file)
```

## Slimeの導入

```bash
$ cd ~/opt
$ curl -O http://common-lisp.net/project/slime/snapshots/slime-current.tgz
$ tar zxvf slime-current.tgz
$ ln -s ~/opt/slime-* ~/.emacs.d/slime
```

emacsの設定ファイルに以下を追記

```lisp
;; Clozure CLをデフォルトのCommon Lisp処理系に設定
(setq inferior-lisp-program "ccl")
;; ~/.emacs.d/slimeをload-pathに追加
(add-to-list 'load-path (expand-file-name "~/.emacs.d/slime"))
;; SLIMEのロード
(require 'slime)
(slime-setup '(slime-repl slime-fancy slime-banner))
```

## ためしに足し算のライブラリを作成

```bash
# ローカルリポジトリの保存先を作成
$ mkdir -p ~/paip/libraries
# ローカルリポジトリの保存先をパスに登録
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

[~/paip/libraries/plus/src/plus.lisp](./libraries/plus/src/plus.lisp)を編集

[テスト](./libraries/plus/t/plus.lisp)を記述

```lisp
CL-USER> (ql:quickload :plus-test)
```

