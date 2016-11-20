---
layout: post
title: Add Custom CSS
author: typora.io
category: how-to
tags: [style, tutorial]
typora-root-url: ../
---

*This feature requires Typora later than 0.9.12 on Windows or 0.9.9.5.1 on macOS*

## Open Theme Folder

Open preference panel, and click a button named "Open Theme Folder" under section "Appearance", would open typora' theme folder in Finder/Explorer.

You would add you custom theme here (there will be other documents introducing how to find/install/write themes). 

But sometimes, you may only want to modify CSS like changing font or increase writing area, and apply it to all themes or current theme without writing a whole new theme file, this document will show you how-to.

## Append Custom CSS to all themes or other themes

Typora will load CSS files in following order:

1. Typora's basic styles.
2. CSS for current theme.
3. `base.user.css` under theme folder.
4. `{current-theme}.user.css` under theme folder. If you choose `Github` as your theme, then `github.user.css` will also be loaded.

You could create `base.user.css` and `{current-theme}.user.css` under the theme folder if they do not exist.

If you want to change CSS styles, and apply it to all themes, you should modify `base.user.css` and append your own CSS, so whatever a theme is selected, your css style will still be loaded and be applied.

If you want to modify some CSS for a specific theme, for instance "Newsprint", you could create `newsprint.user.css` and append the CSS you want. The reason we do not recommend you to modify the theme file directly is following:

1. Default themes that available after Typora is installed may be updated the same time when you update Typora. Update logic for default themes is just: theme file from new version replace the exisiting one under theme folder, so your modifications may be gone after Typora is updated if you put them in default css files.
2. Themes developed by other people may also be changed in future. If they changed their css file, you could just replace their new file with your old one without worrying your modification will be gone if you put them in other file (`{current-theme}.user.css`).

But if you use your own CSS theme, then modifying it directly is also OK.

Note: `{current-theme}` in `{current-theme}.user.css` should be (case-sensitive) same with the filename part of current theme. For example, css file for "Github" theme is `github.css`, so the filename part is "github" not "Github".