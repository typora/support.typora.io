---
layout: post
title: Add Search Service
author: typora.io
category: how-to
tags: [search, contextmenu]
typora-root-url: ../
---

Users can add custom search engines to extend functions shown in context menu.

![Slice 2](/media/add-search-service/Slice 2.png)

# macOS

There is a system-wide preference to change available search engines in the context menu for most applications:

![Snip20160815_11](/media/add-search-service/Snip20160815_11.png)

# Windows

*(This requires Typora ≥ v0.9.16)*

1. Open `Menu`  →  `Preference` in Typora, then click "Open Advanced Settings".

   ![sshot-1](/media/custom-key-binding/sshot-1.png)

2. Open and edit `conf.user.json` from the "File Explorer". If there's no such file, create one.

3. Modify or set following config into the `conf.user.json` file, `%s` will represent the selected text. for example:

   ```json
   "searchService": [
       ["Search with Google", "https://google.com/search?q=%s"],
       ["Translate", "http://translate.google.com/?source=osdd#auto|auto|%s"]
       ["Search with Wikipedia", "https://en.wikipedia.org/wiki/Special:Search/%s"]
     ]
   ```

   Note: Default config is:

   ```json
   "searchService": [
       ["Search with Google", "https://google.com/search?q=%s"],
     ]
   ```

4. Restart Typora, and then the options from `searchService` will be available from the context menu.
