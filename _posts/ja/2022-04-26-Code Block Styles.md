---
layout: post
title: コードブロックのスタイル/テーマ
author: typora.io
typora-root-url: ../
permalink: /ja/Code-Block-Styles/
---

[English Original Version](/Code-Block-Styles/) [Help Improve the Translation](https://github.com/typora/wiki-website)

> ヒント: これらの CSS スニペットをどこに置くかについては、[カスタム CSS の追加](/Add-Custom-CSS/) を参照してください。

Typora はコードフェンスのシンタックスハイライトに [CodeMirror](http://codemirror.net) を使用します。 Typora のコードフェンスはテーマクラスとして `cm-s-inner` を使用します。

CodeMirror のテーマを Typora に移植する場合、たとえば [material.css](https://codemirror.net/theme/material.css) テーマは、以下のようにします。

1. [material.css](https://codemirror.net/theme/material.css) ファイルをコピーして、テーマフォルダの下の `base.user.css` または `[theme].user.css` に貼り付け、CodeMirror のテーマクラス名を `cm-s-inner` に変更します。 たとえば、元の `.cm-s-material` は `.cm-s-inner` に変更します。
2. CodeMirror でレンダリングする前のコードフェンスは、`<pre class="md-fences"></pre>` のような構造になっています。 このため、font-family、color、background などの基本的なスタイルも `.md-fences` のセレクターに適用してください。 

したがって、最終的な CSS ファイルは以下のようになります。

```css
/** ported from https://codemirror.net/theme/material.css **/
/*

    Name:       material
    Author:     Michael Kaminsky (http://github.com/mkaminsky11)

    Original material color scheme by Mattia Astorino (https://github.com/equinusocio/material-theme)

*/

.cm-s-inner {
  background-color: #263238;
  color: rgba(233, 237, 237, 1);
}
.cm-s-inner .CodeMirror-gutters {
  background: #263238;
  color: rgb(83,127,126);
  border: none;
}
.cm-s-inner .CodeMirror-guttermarker, .cm-s-inner .CodeMirror-guttermarker-subtle, .cm-s-inner .CodeMirror-linenumber { color: rgb(83,127,126); }
.cm-s-inner .CodeMirror-cursor { border-left: 1px solid #f8f8f0; }
.cm-s-inner div.CodeMirror-selected { background: rgba(255, 255, 255, 0.15); }
.cm-s-inner.CodeMirror-focused div.CodeMirror-selected { background: rgba(255, 255, 255, 0.10); }
.cm-s-inner .CodeMirror-line::selection, .cm-s-inner .CodeMirror-line > span::selection, .cm-s-inner .CodeMirror-line > span > span::selection { background: rgba(255, 255, 255, 0.10); }
.cm-s-inner .CodeMirror-line::-moz-selection, .cm-s-inner .CodeMirror-line > span::-moz-selection, .cm-s-inner .CodeMirror-line > span > span::-moz-selection { background: rgba(255, 255, 255, 0.10); }

.cm-s-inner .CodeMirror-activeline-background { background: rgba(0, 0, 0, 0); }
.cm-s-inner .cm-keyword { color: rgba(199, 146, 234, 1); }
.cm-s-inner .cm-operator { color: rgba(233, 237, 237, 1); }
.cm-s-inner .cm-variable-2 { color: #80CBC4; }
.cm-s-inner .cm-variable-3 { color: #82B1FF; }
.cm-s-inner .cm-builtin { color: #DECB6B; }
.cm-s-inner .cm-atom { color: #F77669; }
.cm-s-inner .cm-number { color: #F77669; }
.cm-s-inner .cm-def { color: rgba(233, 237, 237, 1); }
.cm-s-inner .cm-string { color: #C3E88D; }
.cm-s-inner .cm-string-2 { color: #80CBC4; }
.cm-s-inner .cm-comment { color: #546E7A; }
.cm-s-inner .cm-variable { color: #82B1FF; }
.cm-s-inner .cm-tag { color: #80CBC4; }
.cm-s-inner .cm-meta { color: #80CBC4; }
.cm-s-inner .cm-attribute { color: #FFCB6B; }
.cm-s-inner .cm-property { color: #80CBAE; }
.cm-s-inner .cm-qualifier { color: #DECB6B; }
.cm-s-inner .cm-variable-3 { color: #DECB6B; }
.cm-s-inner .cm-tag { color: rgba(255, 83, 112, 1); }
.cm-s-inner .cm-error {
  color: rgba(255, 255, 255, 1.0);
  background-color: #EC5F67;
}
.cm-s-inner .CodeMirror-matchingbracket {
  text-decoration: underline;
  color: white !important;
}

/**apply to code fences with plan text**/
.md-fences {
  background-color: #263238;
  color: rgba(233, 237, 237, 1);
  border: none;
}

.md-fences .code-tooltip {
  background-color: #263238;
}
```

そして結果は、以下の図のようになります。

![Snip20160623_11](/media/code-block-style/Snip20160623_11.png)

上記の例に従って、シンタックスハイライト用の独自の CSS スタイルを作成できます。

`cm-s-inner` はコードフェンスにのみ適用され、ソースコードモードでの Markdown シンタックスに影響を与えないことに注意してください。 また、すべての CSS プロパティがソースコードモードのコードフェンスに適用されるわけではありません。

