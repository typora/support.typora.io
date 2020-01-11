---
layout: post
title: Resize Images
author: typora.io
category: how-to
tags: [image]
typora-root-url: ../

---

Typora allows you to use `<img>` tag for displaying images, which can also be used to adjust the size of images.

For example, you could specify the `width` or `height` attribute of an `<img>` tag, or set the width/height in its `style` attribute:

```html
<img src="https://www.google.com/doodles/kamma-rahbeks-241st-birthday" width="200px" />

<!--or-->

<img src="https://www.google.com/doodles/kamma-rahbeks-241st-birthday" style="height:200px" />
```

Another common use case is that when you insert a retina image, you need to scale it to a "correct" size. To do this, specify a `zoom` factor in its `style` attribute:

```html
<img src="https://www.google.com/doodles/kamma-rahbeks-241st-birthday" style="zoom:50%" />
```

You can set other css properties in the `style` attribute: they will be ignored when you edit or preview by Typora, but can affect the exported HTML or PDF.
