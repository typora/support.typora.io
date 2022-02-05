---
layout: post
title: Use Typora from Shell or Cmd
author: typora.io
category: how-to
tags: [dev, shell]
typora-root-url: ../
date: 2016-09-26
---

## macOS

You can use `open -a typora xxx.md` to open the markdown file `xxx.md` in Typora from a command line. If Typora is your default editor for `.md` files, when `open xxx.md` would be enough.

You can also add 

```shell
alias typora="open -a typora"
```

in your `.bash_profile` or other configuration file, then you would be able to simply type `typora xxx.md`  instead.

(Requires Typora ≥ 1.1) If you want to use command line to not only open existing files, but also creating new files when target `.md` file does not exists, you could add

```shell
alias typora="/Applications/Typora.app/Contents/MacOS/Typora"
```

in your `.bash_profile` or other configuration file.

Then if you run `typora xxx.md` and `xxx.md` does not exists, Typora will pop up a dialog to ask you whether to create target file or cancel the operation.

## Windows

If Typora is set as the default markdown editor, then in cmd.exe, then typing  ```.\example.md``` or ```start example.md``` will open this markdown file.

To set Typora as the default markdown editor: 

1. Select one of your markdown files
2. Open context menu and choose
    - _Properties_ and then click on _Change_ button, as shown in **Figure 1**
    - _Open with -> Choose another app_, as shown in **Figure 2**
3. Choose _Typora_ or _Typora Launcher_ in **How do you want to open this file?** and set a checkmark for _Always use this app to open .md files._


**Figure 1 - File properties window**  
![Figure 1 - Open Properties of Markdown file](/media/use-from-shell/Snip20180704_1.png)  

**Figure 2 - Application chooser window**  
![Figure 2 - Application chooser](/media/use-from-shell/Snip20180704_2.png)  

(Requires Typora ≥ 1.1) You could also add typora.exe in PATH, then use `typora xxx.md` to open markdown file, or create new one if target file does not exists.

## Linux

After [installing Typora on Linux](/Typora-on-Linux/), user can run `typora` directly in terminal, for example:

```bash
typora ~/Document/test.md
```
