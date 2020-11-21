---
layout: post
title: Add Custom CSS
author: typora.io
category: how-to
tags: [style, tutorial]
typora-root-url: ../
---

> TIP: This feature requires Typora later than 0.9.12 on Windows or 0.9.9.5.1 on macOS.

## Open Theme Folder

To open Typora's theme folder in Finder/Explorer., open the preference panel in the Appearance section, click the  "Open Theme Folder" button. under section "Appearance".

You can add your custom theme here. If you want to find, install or write themes, see the [About Themes page](/About-Themes).

But you may only want to modify CSS like changing font or increase writing area, and apply it to all themes or just current theme without writing a whole new theme file. This section shows you how to do this.

## Append Custom CSS to all themes or other themes

Typora will load CSS files in following order:

1. Typora's basic styles
2. CSS for current theme
3. `base.user.css` under theme folder
4. `{current-theme}.user.css` under theme folder.

You can create `base.user.css` and `{current-theme}.user.css` under the theme folder if they do not exist.

If you want to change CSS styles, and apply it to **all themes**, you should modify `base.user.css` and append your own CSS, so whatever theme is selected, your CSS style will still be loaded and applied.

If you want to modify some CSS for **a specific theme**, for instance "Newsprint", you can create `newsprint.user.css` and append the CSS you want. The reasons we do not recommend you modify the theme file directly are:

1. Default themes that available after Typora is installed may also be updated. If this happens, then the new version simply replaces the existing one under theme folder, and your modifications will be lost.
2. Themes developed by other people may also be changed in future. If they changed their CSS file, you can just replace their new file with your old one without worrying your modification will be gone.

(If you write your own CSS theme, then modifying it directly is OK.)

> Note: Filenames are case-sensitive. The `{current-theme}` in `{current-theme}.user.css` must be the same as the filename part of the current theme. For example, the CSS file for "GitHub" theme is `github.css`, so the filename part is "github" not "Github".

## Debug CSS

You can open Chrome/Safari DevTools to debug element styles.

- On macOS, you could check `Help` -> `Enable Debug` menu item, then right click anywhere in Typora's hybrid edit view, then click "Inspect Elements" from context menu.
- On Windows/Linux, you could open DevTools from `View` -> `Toggle DevTools` menu item.
