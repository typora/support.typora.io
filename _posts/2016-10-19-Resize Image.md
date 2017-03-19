---
layout: post
title: Resize Images
author: typora.io
category: how-to
tags: [image]
typora-root-url: ../

---

Typora allows the use of the `<img>` tag, which allows you to adjust the size of images. For example, you could specify the `width` or `height` attribute of an `<img>` tag, or set the width and/or height in a `style` attribute:

```html
<img src="https://www.google.com/doodles/kamma-rahbeks-241st-birthday" width="200px" />

<!--or-->

<img src="https://www.google.com/doodles/kamma-rahbeks-241st-birthday" style="height:200px" />
```

Another common use case is when you try to insert a high-resolution (Apple *retina*) image, and want to scale it to a "correct" size, you could specify a `zoom` factor in its `style` attribute:

```html
<img src="https://www.google.com/doodles/kamma-rahbeks-241st-birthday" style="zoom:50%" />
```

This syntax will be read and displayed properly by Typora. You could also set other CSS properties in the `style` attribute -- they will be ignored when you edit or preview in Typora, but could affect the exported HTML or PDF image.

