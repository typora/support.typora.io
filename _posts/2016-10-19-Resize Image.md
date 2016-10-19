---
layout: post
title: Resize Images
author: typora.io
category: how-to
tags: [image]
typora-root-url: ../../

---

Typora allows to use `<img>` tag for displaying images, such it can also be used to adjust the size of images.

For example, you could specify the `width` or `height` attribute of an `<img>` tag, or set the width/height in its `style` attribute:

```html
<img src="https://www.google.com/doodles/kamma-rahbeks-241st-birthday" width="200px" />

<!--or-->

<img src="https://www.google.com/doodles/kamma-rahbeks-241st-birthday" style="height:200px" />
```

Another common user case is that when you try to insert a retina image, and want to scale it to a "correct" size according, then you could specify a `zoom` factor in its `style` attribute.

```html
<img src="https://www.google.com/doodles/kamma-rahbeks-241st-birthday" style="zoom:50%" />
```

Above syntax can be understand and displayed by Typora, you could also set other css properties in its `style` attribute, they will be ignored when you edit or preview by Typora, but could affect the exported HTML or PDF.

