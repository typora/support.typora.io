---
layout: post
title: Control TOC Levels
author: typora.io
category: how-to
tags: [style]
typora-root-url: ../
---

> TIP: To know where to put those CSS snippets, please see [Add Custom CSS](/Add-Custom-CSS/).

In Typora `[TOC]` will generate "Table of Contents".  By default it will show headings from `h1` to `h6`. To hide lower level headings, for instance, `h6`, you would append this CSS:

```css
.md-toc-h6 {
  display: none;
}
```
