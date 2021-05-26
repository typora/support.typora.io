---
layout: post
title: Code Block Styles/Themes
author: typora.io
category: how-to
tags: [style, code fences]
thumbnail: code-block-style.png
typora-root-url: ../
---

> TIP: To know where to put those CSS snippets, please see [Add Custom CSS](/Add-Custom-CSS/).

Typora uses [CodeMirror](http://codemirror.net) for syntax highlight in code fences. Code fences in Typora use `cm-s-inner` as their theme class.

To port a CodeMirror theme into Typora, for example [material.css](https://codemirror.net/theme/material.css):

1. copy and paste into `base.user.css` or `[theme].user.css` under theme folder, and replace their CodeMirror theme class name with `cm-s-inner`, for instance, change the original `.cm-s-material` into `.cm-s-inner`.
2. Before rendered by CodeMirror, the code fences has struct like `<pre class="md-fences"></pre>`. So, please also apply basic styles like font-family, color, and background into the `.md-fences` selector. 

So the final CSS would be:

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

And result is: ![Snip20160623_11](/media/code-block-style/Snip20160623_11.png)

You can write your own CSS styles for syntax highlight following the example above.

Please note that `cm-s-inner` would only apply to code fences: it won't affect the markdown syntax in source code mode. And not all CSS properties would be applied to code fences in source code mode.
