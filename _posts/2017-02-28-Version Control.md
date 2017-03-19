---
layout: post
title: Version Control and Recovery
author: typora.io
category: how-to
tags: [auto-save, history, version]
typora-root-url: ../
typora-copy-images-to: ../media/version-control
---

## OS X - macOS

In OS X - macOS, Typora integrates with the native version control function of the operating system.

You could simply choose**`File** **→** **Revert To** **→** **Browse All Versions** from the main menu to browse and revert to specific versions of a file. More detail can be found [here](https://support.apple.com/kb/PH25757?viewlocale=en_US&locale=en_US).

![Snip20170228_6](/media/version-control/Snip20170228_6.png)

## Windows/Linux 

Windows 10 has version control support at the [system level](http://www.pcworld.com/article/2974385/windows/how-to-use-windows-10s-file-history-backup-feature.html).

Typora for Windows and Typora for Linux do not provide version control, but if you save drafts in a timely manner you can prevent data lost if Typora exits unexpectedly without you recently having saved a file, or if you accidentally quit Typora without first saving a file.

Open the **Preference panel** and in the **Editor** section, click the `Recover Unsaved Drafts` button to find draft files auto-saved by Typora.

![Snip20170228_7](/media/version-control/Snip20170228_7.png)

The filename of those backed-up drafts will be in the form of `{date}-{filename}.md`. If your content is recently created and not yet saved, it will not have a `file path`. In this case, its `{filename}` part will be auto-generated, usually by using the first heading or first sentence. With this identification, you will be able to find and copy the auto-saved backup file and retrieve at least some of your work.

Typora for Window and Typora for Linux also have this [autosave](/Auto-Save/) feature.