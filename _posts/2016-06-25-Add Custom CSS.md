---
layout: post
title: Add Custom CSS
author: typora.io
category: how-to
tags: [style, tutorial]
typora-root-url: ../
---

*This feature requires Typora later than 0.9.12 on Windows or 0.9.9.5.1 on macOS*

## The Theme Folder

* Open Typora's Preferences panel using the menu item ***Typora -> Preferences...*** (`Command + comma`  in OS X/macOS)
* Click the `Open Theme Folder` button in the `Appearance` section to open the Theme folder.

You can add custom theme files here, but sometimes you may want to modify only specific style rules without writing a whole new theme file. Here's how to do this for all themes or just the current theme:

### The Theme File Cascade

Typora loads CSS files in the following cascading order:

1. Typora's inbuilt styles
2. The CSS file for the current theme
3. `base.user.css` in the Theme folder.
4. `{current-theme}.user.css` in the Theme folder
5. If you have chosen _Github_ as your theme, then `github.user.css` will also be loaded.

### Adding Custom CSS to base and current themes

1. Create `base.user.css` and `{current-theme}.user.css` in the Theme folder if they don't exist. Any CSS style rules in them will replace `base` or `{current-theme}` CSS styles.
2. If you want to change CSS styles for all themes, modify `base.user.css` with your own CSS. The new underlying base CSS styles will be loaded and applied whatever the selected theme.
3. If you want to change CSS styles for the current theme, modify `{current-theme}.user.css` with your own CSS. The new CSS theme styles will be loaded and applied onto the selected theme.

**Note:** `{current-theme}` in `{current-theme}.user.css` is **case-sensitive** with the filename part of the current theme (the part before the file .extension, which may be hidden in OS X/macOS). For example, the CSS file for the _Github_ theme is `github.css`, so the filename part is `github`, not `Github`.

### Modifying Inbuilt or Imported themes

If you want to modify the CSS for a specific inbuilt Typora theme, for instance the _Newsprint_ theme, create a file called `newsprint.user.css` in the Theme folder with only the CSS styles you want to change.

We do not recommend modifying Typora's inbuilt base or imported theme CSS files directly, because:

1. **Typora's default themes will be overwritten each time you update Typora**. The new inbuilt theme files will replace those in the Theme folder, so any modifications you made will be overwritten.
2. **Themes developed by other people may also be changed in future**. If they change their theme, you can simply overwrite the old file or directory with the new one. Your modifications will be preserved if you put them in a (`{current-theme}.user.css`) file.
3. **If you create your own CSS themes you can modify them directly**.

