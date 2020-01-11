---
layout: post
title: Change Background
author: typora.io
category: how-to
tags: [style]
typora-root-url: ../
---

> NOTE: Some of following CSS style will only work for recent versions of Typora (>= 0.9.9.6 on macOS, and >=0.9.13 on Windows).

> TIP: To know where to put those CSS snippets, please see [Add Custom CSS](/Add-Custom-CSS/).

Personally, I don't recommend users set a background for a text editor, but if you still want this, here's what to do.

For example, add a notebook background for Typora. (This free image is taken from [Fuzzimo](http://www.fuzzimo.com/free-seamless-textures-notebook-papers/), and is copied under the theme folder of Typora.)

Use CSS code like:

```css
content {
  background: url(./fzm-seamless.notebook.texture-14.png);
  background-repeat: repeat;
}

#write {
  padding-left: 120px; /*adjust writing area position*/
}

body {
  background: #F3F3F3; 
  /*Please set this background color as close to the background image as possible.
  titlebar for seamless window on macOS will use this background color. 
  typora for Win/Linux will use this to judge whether typora is in dark mode or light mode*/
}

/**Other css may needed to adjust UI components**/
```

The result is:

 ![Snip20160625_1](/media/background/Snip20160625_1.png)

Another example:

```css
content {
  background-image: url(http://localhost:4000/media/background/crashed_ship_by_hiddenvortexdesigns-da57nk8.jpg);
  background-repeat: repeat;
  background-position: -52px;
}

#write {
  margin-top: 24px;
  background-color: rgba(255, 255, 255, 0.68);
  margin-bottom: 24px;
  min-height: calc(100% - 48px);
}

body {
  background-color: #8F9D9A;
}

/**Other CSS to adjuest UI components*/
```

Produces:

![Snip20160625_2](/media/background/Snip20160625_2.png)
