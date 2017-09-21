---
layout: post
title: Page Breaks
date: 2017-09-20
category: how-to
author: jonathan.is
tags: [markdown]
typora-root-url: ../
typora-copy-images-to: ../media/page-breaks
---

Sometimes you may want to export to a pdf, and have page breaks on top-level headers.

Open the themes folder, and edit the css for whatever them you want to include

```css
@media print {
  h1 {
    page-break-before: always;
  }
  h1:first-of-type {
    page-break-before: avoid;
  }
}
```

Now when exporting, a new page will be created before each h1 element, except the first one.
