---
layout: post
title: Change Background
author: typora.io
category: how-to
tags: [style]
typora-root-url: ../
---

> Some of following CSS style will work for latest version of Typora (>= 0.9.9.6 on macOS, and >=0.9.13 on Windows).
>
> About where to put those CSS, please follow [Add Custom CSS](/Add-Custom-CSS/).

Personally, I don't recommend users to set a background for a text editor, but if you still want this, you could follow this article.

For example, add a notebook background for Typora. The image is taken from [here](http://www.fuzzimo.com/free-seamless-textures-notebook-papers/), and be copied under the theme folder of Typora.

CSS code is like:

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

The result is look like:

 ![Snip20160625_1](/media/background/Snip20160625_1.png)

Another example:

![Snip20160625_2](/media/background/Snip20160625_2.png)

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

