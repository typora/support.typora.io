---
layout: post
title: 画像のサイズを変更する
author: typora.io
typora-root-url: ../
permalink: /ja/Resize-Image/
---

[English Original Version](/Resize-Image/) [Help Improve the Translation](https://github.com/typora/wiki-website)

Typora では、画像を表示するために `<img>` タグを使用でき、画像のサイズを調整するためにも使用できます。

たとえば、 以下のように、`<img>` タグの `width` または `height` 属性を指定したり、`style` 属性に width/height を設定したりできます。

```html
<img src="https://www.google.com/doodles/kamma-rahbeks-241st-birthday" width="200px" />

<!-- または -->

<img src="https://www.google.com/doodles/kamma-rahbeks-241st-birthday" style="height:200px" />
```

もう1つの一般的な使用例は、Retina 用の画像を挿入するときに、「正しい」サイズに拡大縮小する必要がある場合です。 これを行うには、`style` 属性に `zoom` ファクターを指定します。

```html
<img src="https://www.google.com/doodles/kamma-rahbeks-241st-birthday" style="zoom:50%" />
```

他の CSS プロパティを `style` 属性に設定することができます。 それらは Typora で編集したりプレビューするときには無視されますが、エクスポートされた HTML や PDF に影響を与えることができます。
