---
layout: post
title: Control TOC Levels
author: typora.io
category: how-to
tags: [style]
typora-root-url: ../
---

>  **Note:** More information on Typora's CSS files is at [Add Custom CSS]().

Entering `[TOC]` will generate a Table of Content. By default, it will show all headings from `h1` to `h6`. 

To hide low-level headings, for example `h6`, add this CSS rule to the appropriate file:

```css
.md-toc-h6 {
  display: none;
}
```

