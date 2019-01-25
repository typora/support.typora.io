---
layout: post
title: Custom Font
author: typora.io
category: how-to
tags: [style, font]
typora-root-url: ../
typora-copy-images-to: ../media/custom-font
---

> For information about where to put the CSS files that are discussed below, please refer to [Add Custom CSS](/Add-Custom-CSS/).

Custom fonts in Typora are set by CSS. For example, appending the following in `base.user.css` under theme folder

```css
body {
  font-family: Courier;
}
```

Would override the font setting in current theme, and apply the system font `Courier`, and make the editing area look like this: 

![1](/media/custom-font/1.png)

---

You could also use a web font, for example:

```css
@import url(https://fonts.googleapis.com/css?family=Oxygen);

body {
 font-family: 'Oxygen', sans-serif; 
}
```

But to make the font faster when loading or use it when internet access is not available, we recommend you to download it and put under Typora's theme folder.

For example, if you download the `woff2` file from google fonts and put them under the `[typora-theme-folder]/fonts` directory, then you could use CSS like:

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

A quicker way to change font size is to do that in preferences panel. On macOS, "font size" is in "General" section of preferences panel. On Window/Linux, it is under "Appearance" section, you also use press <kbd>Ctrl+F</kbd> to search it in preferences panel.

This option requires support from themes you use. If you are making a theme css, use `rem` as font unit will make sure this option works.

<img src="/media/custom-font/Screen Shot 2019-01-25 at 22.18.21.png" style="zoom:50%" />