---
layout: post
title: Version Control and Recovery
author: typora.io
category: how-to
tags: [auto-save, history, version]
typora-root-url: ../

---

## macOS

On macOS, Typora integrates with the native version control function powered by the operation system.

You could simply choose `File` > `Revert To` > `Browse All Versions` from main menu to browse and revert to certain version. More detail can be found [here](https://support.apple.com/kb/PH25757?viewlocale=en_US&locale=en_US)

## Windows/Linux 

Windows 10 also have version control support on system level ([reference](http://www.pcworld.com/article/2974385/windows/how-to-use-windows-10s-file-history-backup-feature.html)).

Typora on Window/Linux does not provide version control feature, but can save drafts timely to prevent data lost if Typora exit or crashed without saving file, or you accidentally quite Typora without saving your writings.

 You could click the "Recover Unsaved Drafts" button to found some writing drafts auto saved by Typora.

The filename of those backed-up drafts is like `{date}-{filename}.md`, if your content is newly created without a file path (which is, "Untitled"), the `{filename}` part is auto generated, which is usually the first heading or first sentence. You could find and copy out the corresponding backup file to retrieve some part of your writings.

Also, Typora for Window/Linux has an [autosave](/Auto-Save/) feature.