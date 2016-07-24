---
layout: post
title: Auto Numbering for Headings
date: 2016-06-06
category: how-to
author: typora.io
tags: [style]
typora-root-url: ../../
---

> About where to put those CSS, please follow [Add Custom CSS](/Add-Custom-CSS/).

This CSS snip will auto add numbering to all headings in your article, like this:

![1](/media/auto-numbering/1.png)

## How to use:

Add following to your base.user.css or [theme].user.css under theme folder.

```css
/** initialize css counter */
#write {
    counter-reset: h1
}

h1 {
    counter-reset: h2
}

h2 {
    counter-reset: h3
}

h3 {
    counter-reset: h4
}

h4 {
    counter-reset: h5
}

h5 {
    counter-reset: h6
}

/** put counter result into headings */
h1.md-heading:before {
    counter-increment: h1;
    content: counter(h1) ". "
}

h2.md-heading:before {
    counter-increment: h2;
    content: counter(h1) "." counter(h2) ". "
}

h3.md-heading:before,
h3.md-focus.md-heading:before /** override the default style for focused headings */ {
    counter-increment: h3;
    content: counter(h1) "." counter(h2) "." counter(h3) ". "
}

h4.md-heading:before,
h4.md-focus.md-heading:before {
    counter-increment: h4;
    content: counter(h1) "." counter(h2) "." counter(h3) "." counter(h4) ". "
}

h5.md-heading:before,
h5.md-focus.md-heading:before {
    counter-increment: h5;
    content: counter(h1) "." counter(h2) "." counter(h3) "." counter(h4) "." counter(h5) ". "
}

h6.md-heading:before,
h6.md-focus.md-heading:before {
    counter-increment: h6;
    content: counter(h1) "." counter(h2) "." counter(h3) "." counter(h4) "." counter(h5) "." counter(h6) ". "
}

h1.nocount:before,
h2.nocount:before,
h3.nocount:before,
h4.nocount:before,
h5.nocount:before,
h6.nocount:before {
    content: "";
    counter-increment: none
}

/** override the default style for focused headings */
h3.md-focus:before,
h4.md-focus:before,
h5.md-focus:before,
h6.md-focus:before {
    color: inherit;
    border: inherit;
    border-radius: inherit;
    position: inherit;
    left:initial;
    float: none;
    top:initial;
    font-size: inherit;
    padding-left: inherit;
    padding-right: inherit;
    vertical-align: inherit;
    font-weight: inherit;
    line-height: inherit;
}
```

