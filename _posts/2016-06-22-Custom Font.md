---
layout: post
title: Custom Fonts
author: typora.io
category: how-to
tags: [style, font]
typora-root-url: ../
typora-copy-images-to: ../media/custom-font
---

> TIP: To know where to put those CSS snippets, please see [Add Custom CSS](/Add-Custom-CSS/).

## Change Font

Custom fonts in Typora are set by CSS. For example, appending the following in `base.user.css` under theme folder

```css
body {
  font-family: Courier;
}
```

would override the font setting in current theme, and apply the system font `Courier`, and make the editing area look like this: 

![1](/media/custom-font/1.png)

You could also use a web font, for example:

```css
@import url(https://fonts.googleapis.com/css?family=Oxygen);

body {
 font-family: 'Oxygen', sans-serif; 
}
```

> TIP: to make the font faster when loading or use it when internet access is not available, we recommend you download it and put under Typora's theme folder.

For example, if you download the `woff2` file from google fonts and put them under the `[typora-theme-folder]/fonts` directory, then use CSS like:

```css
/* latin */
@font-face {
  font-family: 'Oxygen';
  font-style: normal;
  font-weight: 400;
  src: local('Oxygen'), local('Oxygen-Regular'),url('./fonts/Oxygen400.woff2') format('woff2');
}

/* latin */
@font-face {
  font-family: 'Oxygen';
  font-style: normal;
  font-weight: 700;
  src: local('Oxygen Bold'), local('Oxygen-Bold'), url('./fonts/Oxygen700.woff2') format('woff2');
}

body {
 font-family: 'Oxygen', sans-serif; 
}
```

to apply the font.

## Change Font Size

A quicker way to change font size is in the preferences panel. On macOS, "font size" is in "General" section of preferences panel. On Window/Linux, it is under "Appearance" section, you also use press <kbd>Ctrl+F</kbd> to search for it in preferences panel.

This option requires support from the theme(s) you use. If you are making a theme css, use `rem` as the font unit to make sure this option works.

<img alt="2" src="/media/custom-font/2.png" style="zoom:50%" />

## Change Font for Souce Code Mode

You can use 

```css
#typora-source {
  font-family: monospace;
  font-size: inherit.
  --monospace: monospace; /* for code blocks and inline code inside source code mode */
}
```

to change font for source code mode.

## Change Font for Code Blocks

```css
body {
  --monospace: monospace /* for all code blocks, inline code, and source code mode */
}

// or

#md-fences {
  /* for code block only */
}
```

