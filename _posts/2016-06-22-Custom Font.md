---
layout: post
title: Custom Font
author: typora.io
category: how-to
tags: [style, font]
typora-root-url: ../
---

> **Note:** More information on Typora's CSS files is at [Add Custom CSS](applewebdata://36AA7FB4-DD4C-4FC7-81AE-5D82BB2AA4C1/Add-Custom-CSS/).

Custom fonts in Typora are set by the  `.css` files in Typora's theme folder.

For example, adding the following to the `base.user.css` file in the Theme folder ---

```css
body {
  font-family: Courier;
}
```

--- would override the font settings of the current theme and make *Courier* the system font. The editing area would then look something like this: 

![1](/media/custom-font/1.png)

---

You can also import a Web font, for example:

```css
@import url(https://fonts.googleapis.com/css?family=Oxygen);

body {
 font-family: 'Oxygen', sans-serif; 
}
```

But to make Web fonts load faster or for use when Internet access is not available, we recommend that you download any Web fonts you need and store them in the `[typora-theme-folder]/fonts` fonts directory.

For example, if you download and store [_Oxygen_](https://fonts.google.com/specimen/Oxygen) from [Google Fonts](https://fonts.google.com ), you could write something like the following CSS to use it without a live Internet connection:

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

