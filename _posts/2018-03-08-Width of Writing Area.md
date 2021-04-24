---
layout: post
title: Change Width of Writing Area
author: typora.io
category: how-to
tags: [style]
typora-root-url: ../
typora-copy-images-to: ../media/width
---

> Some of following CSS style will work for latest version of Typora (>= 0.9.9.6 on macOS, and >=0.9.13 on Windows).
>
> About where to put those CSS, please follow [Add Custom CSS](/Add-Custom-CSS/).

Example CSS:

```css
#write {
  max-width: 1800px; /*adjust writing area position*/
}
```
You could also use other css styles like `padding-left` or `padding-right` to adjust the writing area.

To change the width of source code mode:

```css
#typora-source .CodeMirror-lines {
  max-width: auto; /*or 1000px*/
}
```

| width                                                        | narrow                                                       |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![Screen Shot 2021-04-19 at 22.57.29](/media/width/Screen Shot 2021-04-19 at 22.57.29.png) | ![Screen Shot 2021-04-19 at 22.57.58](/media/width/Screen Shot 2021-04-19 at 22.57.58.png) |

