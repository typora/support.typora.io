---
layout: post
title: カスタムフォント
author: typora.io
typora-root-url: ../
permalink: /ja/Custom-Font/
---

[English Original Version](/Custom-Font/) [Help Improve the Translation](https://github.com/typora/wiki-website)

> ヒント: これらの CSS スニペットをどこに置くかについては、[カスタム CSS の追加](/Add-Custom-CSS/) を参照してください。

## フォントを変更する

Typora のカスタムフォントは CSS で設定します。 たとえば、テーマフォルダ下の `base.user.css` に以下を追記します。

```css
body {
  font-family: Courier;
}
```

上記の設定により、現在のテーマのフォント設定を上書きし、システムフォント `Courier` を適用して、編集領域を次のようにします。

![1](/media/custom-font/1.png)

たとえば、次のような Web フォントを使用することもできます。

```css
@import url(https://fonts.googleapis.com/css?family=Oxygen);

body {
 font-family: 'Oxygen', sans-serif; 
}
```

> ヒント: フォントの読み込みを速くしたり、インターネットにアクセスできないときに使用するために、フォントをダウンロードして Typora のテーマフォルダーの下に置くことをお勧めします。

たとえば、Google フォントから `woff2` ファイルをダウンロードし、それらを `[typora-theme-folder]/fonts` ディレクトリに置く場合は、それらのフォントを適用するために、以下のような CSS を使用します。

```css
/* latin */
@font-face {
  font-family: 'Oxygen';
  font-style: normal;
  font-weight: 400;
  src: local('Oxygen'), local('Oxygen-Regular'),url('./fonts/Oxygen400.woff2') format('woff2');
}

/* latin */
@font-face {
  font-family: 'Oxygen';
  font-style: normal;
  font-weight: 700;
  src: local('Oxygen Bold'), local('Oxygen-Bold'), url('./fonts/Oxygen700.woff2') format('woff2');
}

body {
 font-family: 'Oxygen', sans-serif; 
}
```


## フォントサイズを変更する

フォントサイズをすばやく変更する方法は、設定パネルの「フォントサイズ」を変更することです。 macOS では、「フォントサイズ」は設定パネルの「一般」セクションにあります。 Windows / Linux では、「表示」セクションの下にあり、<kbd>Ctrl + F</kbd> を押して設定パネルで検索することもできます。

このオプションを使用するには、使用するテーマからのサポートが必要です。 テーマの CSS を作成する場合、このオプションが動作するフォント単位として `rem` を使用します。

<img alt="2" src="/media/custom-font/2.png" style="zoom:50%" />

## ソースコードモードのフォントを変更する

以下のような CSS 設定を使用すると、ソースコードモードのフォントを変更できます。

```css
#typora-source {
  font-family: monospace;
  font-size: inherit.
  --monospace: monospace; /* ソースコードモード内のコードブロックとインラインコードに対する設定 */
}
```

## コードブロックのフォントを変更する

```css
body {
  --monospace: monospace /* すべてのコードブロック、インラインコード、およびソースコードモードに対する設定 */
}

// または

#md-fences {
  /* コードブロックのみ変更する場合 */
}
```

