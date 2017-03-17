---
layout: post
title: Change Background
author: typora.io
category: how-to
tags: [style]
typora-root-url: ../
---

> Some of following CSS styling will work for Typora >= 0.9.9.6 on macOS, and >=0.9.13 on Windows.
>
> **Note:** More information on Typora's CSS files is at [Add Custom CSS]().

We don't recommend setting a background image in a text editor, but here's how to do it if you really, really want. For example, you could add [this image of a notebook page](http://www.fuzzimo.com/free-seamless-textures-notebook-papers/) as a background. The image must be copied into the Typora`Theme folder`. The CSS code would be:

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

The result would be:

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

