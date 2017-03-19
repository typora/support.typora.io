---
layout: post
title: About Themes
author: typora.io
category: basic
tags: [style, tutorial]
typora-root-url: ../
---

# Typora Themes

Typora uses CSS files to style how content is displayed. You can change the active theme by selecting another theme from the `Themes` menu.

Each theme is actually a `.css` file in Typora's theme folder. Typora has several built-in themes, and you can add new themes or modify any theme simply by adding or modifying its `.css` file.

We maintain an official [Typora Theme Gallery](http://theme.typora.io) for designers and developers to share custom themes. You can download any theme from here to use or modify. If you understand CSS syntax, you can write, install, and share your own custom themes to stylize Typora.

## The Theme Folder

### macOS

Open the Preferences panel with`Command + ,(comma)` then click the `Open Theme Folder` button:

![typora-preference-mac](/media/about-themes/Snip20160921_1.png)

### Windows/Linux

Open the Preferences panel from `File` → `Preference` on the menu bar, then click the `Open Theme Folder` button:

![typora-preference-electron](/media/about-themes/Snip20160921_2.png)

## Install Custom Themes

1. Open the Theme Folder (see above).
2. Copy or move the theme's `.css` file and related resources, including fonts or images, into the newly-opened folder.
3. Restart Typora, then select the new custom theme from the `Themes` menu.

## Modify Installed Themes

Sometimes, you may just want to change the font family for all themes, or change the font color for all or specific headings in a theme. In this case, you do not have to copy and modify an entire existing CSS file. Just [adding a custom CSS file](/Add-Custom-CSS/) will be enough. If you:

- **Create a `base.user.css` file in the theme folder** the CSS rules in your base custom theme file will be applied to all Typora themes.
- **Create a `{theme-css-name}.user.css` in the theme folder** the CSS rules in it will be applied only to that specific theme file `{theme-css-name}.css`.

Please note that the built-in CSS themes will be overwritten on each Typora version update. Writing your custom CSS into `{theme-css-name}.user.css` files instead of the `{theme-css-name}.css` files will prevent your modifications from being lost after an update.

## Write Custom Themes

Please refer to [Write A Custom Theme for Typora](http://theme.Typora.io/doc/Write-Custom-Theme/).
