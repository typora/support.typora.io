---
layout: post
title: Control TOC Levels
author: typora.io
category: how-to
typora-root-url: ../../
---

>  About where to put those CSS, please follow [Add Custom CSS](/Add-Custom-CSS/).

In typora `[TOC]` will generate "Table of Contents", by default it will show headings from h1~h6. 

To hide low level headings, for instance, `h6`, you would append css:

```css
.md-toc-h6 {
  display: none;
}
```

