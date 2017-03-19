---
layout: post
title: Use Typora from Shell or Cmd
author: typora.io
category: how-to
tags: [dev, shell]
typora-root-url: ../
date: 2016-09-26
---

## OS X macOS

### Open A File From The Terminal

Enter `open -a typora xxx.md` in a Terminal window to open a Markdown file in Typora. If Typora is set as your default editor for `.md` files, `open xxx.md` would be enough. Add the absolute or relative file path to open a Markdown file in another directory from your current Terminal window location.

You could also add:

```shell
alias typora="open -a typora"
```

to your `.bash_profile` or other configuration file to be able to open a Markdown file from a Terminal window  by entering just `typora xxx.md`, including the relative or absolute file path as required.

## Windows

If Typora is set as the default Markdown editor, then in `cmd.exe` inputting the  `.md` file path directly would open the target Markdown file. For example: `./example.md`.

You could also add `{typora-installed-folder}/bin/typora.exe` as a System Path, then you would be able to use `typora xxx.md` to open a Markdown file in Typora from the command line. Usually, `{typora-installed-folder}` is `C:\Program Files (x86)\Typora`.

## Linux

After [installing Typora on Linux](/Typora-on-Linux/), you can run `typora` from the command line, for example:

```bash
typora ~/Document/test.md
```

