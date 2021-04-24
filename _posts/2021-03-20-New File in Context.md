---
layout: post
title: Add New “Markdown” Item in Context Menu
category: how-to
author: typora.io
tags: [windows, macOS]
typora-root-url: ../
---

## Windows

[Reference](https://gist.github.com/alexdevero/a079e3fc24adf759a26b4b5318921dc4)

To add “Markdown File” item from Context Menu → New in explorer. You can download and open [this reg file](/media/add_new_markdown.reg).

Or, create an txt file, adding following content, rename it to *.reg, then click it to register its content.

```properties
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\.md]
@="markdown"

[HKEY_CLASSES_ROOT\.md\ShellNew]
"NullFile"=""

[HKEY_CLASSES_ROOT\markdown]
@="Blank Markdown file"
```

## MacOS

You can use 3rd tools for this to gave a “New File” item in context menu in Finder.

- [Easy New File](https://apps.apple.com/us/app/easy-new-file/id1162194131?mt=12)
- [New File Menu](https://apps.apple.com/us/app/new-file-menu/id1064959555?mt=12)

