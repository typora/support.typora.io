---
layout: post
title: About Themes
author: typora.io
category: basic
tags: [style, tutorial]
typora-root-url: ../
---

## Change Themes

Typora has 5~6 built-in themes. Changing writing theme can be done by selecting theme under the `theme` menu bar. You could also download, install, modify or write your own custom theme to stylize Typora.

Typora uses CSS to style all contents, each theme under `theme` menu is one `.css` file under "Typora's theme folder". So, briefly speaking, you could add/modify themes by adding/modifying corresponding css files under "Typora's theme folder".

## Naming Rule

File naming rule for theme css: Do not use capitalized letters, and nonalphabet characters except `-`. Then please replace whitespace with `-`, and Typora will convert them to readable label in menu item. For example, for `my-first-typora-theme.css`, Typora will put an menu item “My First Typora Theme” under “Themes” menu.

## Get Typora Themes

We have an official website [Typora Theme Gallery](http://theme.typora.io) for designers/developers to share their custom themes with others. You can download themes from there.

## Custom Themes Installation

1. Open Theme Folder. (see instructions below)
2. Copy or move `.css` file and related resources, like fonts or images, into the newly opened folder.
3. Restart Typora, then select it from `Themes` menu.

## Open Theme Folder

### macOS

Open preference panel by <code>cmd+`</code>, then click "Open Theme Folder"

![typora-preference-mac](/media/about-themes/Snip20160921_1.png)

### Windows/Linux

Open preference panel from `File` → `Preference` from menubar, then click "Open Theme Folder":

![typora-preference-electron](/media/about-themes/Snip20160921_2.png)

## Modify Current Styles

Sometimes, you may just want to change font family for all themes, or change font-color for headings for a specific themes. In this case, you do not need to copy/modify a whole exiting css file, just [Add Custom CSS](/Add-Custom-CSS/) is enough. In brief:

- Create & write a `base.user.css` under theme folder, the css rules inside it will be applied to all themes.
- Create & write a `{theme-css-name}.user.css` under theme folder, the css rules inside it will only be applied to theme file `{theme-css-name}.css`.

Please note that the built-in CSS theme files will get overwritten completely on Typora update, so, write your custom css into `*.user.css`, instead of the existing files, this will prevent your modifications from being lost after update.

## Writing My Own Theme

Please refer to [Write Custom Theme for Typora](http://theme.typora.io/doc/Write-Custom-Theme/).
