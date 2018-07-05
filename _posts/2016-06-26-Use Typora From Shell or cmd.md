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

You could use `open -a typora xxx.md` to open target markdown in Typora. If Typora is your default editor for `.md` file, when `open xxx.md` would be enough.

You could also add 

```shell
alias typora="open -a typora"
```

in your `.bash_profile` or other configuration file, then you would be able to do `typora xxx.md`  to open the markdown file from shell/terminal directly.

## Windows

If Typora is set as the default markdown editor, then in cmd.exe, input `.md` file path directly would open target markdown file. For example:  ```.\example.md``` or ```start example.md```

To set Typora as the default markdown editor you have to do following: 

1. Select one of your markdown files
2. Open context menu and choose
    - _Properties_ and then click on _Change_ buttong, as shown in **Figure 1**
    - _Open with -> Choose another app_, as shown in **Figure 2**
3. Choose _Typora_ or _Typora Launcher_ in **How do you want to open this file?** and set a checkmark for _Always use this app to open .md files._


**Figure 1 - File properties window**  
![Figure 1 - Open Properties of Markdown file](media/use-from-shell/Snip20180704_1.png)  


**Figure 2 - Application chooser window**  
![Figure 2 - Applicaiton chooser](media/use-from-shell/Snip20180704_2.png)  

## Linux

After [install Typora on Linux](/Typora-on-Linux/), user could run `typora` directly in terminal, for example:

```bash
typora ~/Document/test.md
```

