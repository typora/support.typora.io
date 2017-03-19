---
layout: post
title: Add Search Service
author: typora.io
category: how-to
tags: [search, contextmenu]
typora-root-url: ../
---

You can add custom search engines to extend functions shown in the context menu.

![Slice 2](/media/add-search-service/Slice 2.png)

# macOS

There is a system-wide preference to change available search engines that are shown in the context menu in most applications. The settings are in **System Preferences** **→** **Shortcuts** **→** **Services** **→** **Searching**:

![Snip20160815_11](/media/add-search-service/Snip20160815_11.png)

# Windows

*(Requires Typora ≥ v0.9.16)*

1. Open **Preferences** in Typora, then click the `Open Advanced Settings` button:

   ![sshot-1](/media/custom-key-binding/sshot-1.png)

2. From the Advanced Settings window, open and edit the  `conf.user.json` file. Create one if it doesn't exist.

3. Modify or set the following `searchService` configuration into the `conf.user.json` file (`%s` represents the selected text). For example:

   ```json
   "searchService": [
       ["Search with Google", "https://google.com/search?q=%s"],
       ["Translate", "http://translate.google.com/?source=osdd#auto|auto|%s"]
       ["Search with Wikipedia", "https://en.wikipedia.org/wiki/Special:Search/%s"]
     ]
   ```

   Note: the default `searchService` configuration is usually Google:

   ```json
   "searchService": [
       ["Search with Google", "https://google.com/search?q=%s"],
     ]
   ```

4. Restart Typora; options from `searchService` will  now be available in the Context menu.