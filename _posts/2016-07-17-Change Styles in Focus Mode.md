---
layout: post
title: Change Styles in Focus Mode
author: typora.io
category: how-to
tags: [style]
typora-root-url: ../
---

**TL;DR**

You can simplify change the text color in unfocused paragraph by adding following css:

```css
:root {
  --blur-text-color: #FFF;
}
```

--------------------

If you want more advanced styling config, you can follow following:

```scss
/*Following are LESS code for better css structure*/

.on-focus-mode {
  /* under focus mode*/
  
  .md-end-block:not(.md-focus):not(.md-focus-container) {
    
    * {
      /* use color close to background for un-focused block */
      color: #C8C8C8 !important;
    }
    
    img{
      /* make img and element less attractive */
      opacity: 50%;
    }
  }
  
  .task-list-item:not(.md-focus-container)>input {
    /* make the check mark on task list less attractive*/
    opacity: 50%;
  }
  
  .md-fences.md-focus .CodeMirror-code>*:not(.CodeMirror-activeline) *,
  .CodeMirror.cm-s-inner:not(.CodeMirror-focused) * {
      /*lines in unfocused code fences, and unfocused lines in focused code fence*/
    color: #C8C8C8 !important;
  }
  
  li[cid]:not(.md-focus-container) {
    color: #C8C8C8 !important;
  }
  
  #typora-source .CodeMirror-code>*:not(.CodeMirror-activeline) * {
    /*source code mode under focus mode*/
    color: #C8C8C8 !important;
  }
  
  .md-focus,
  .md-focus-container {
    /* for text in current focused block */
    color: #111;
  }
 
}
```

Please note that when focus mode is enabled, the `<body>` dom will have class `on-focus-mode`, and focused block level elements will have class `md-focus`. 

Blocks that can contain `md-focus` class are blocks that cannot contain children blocks and will contain a `md-end-block` class. For instance, `<blockquote>` can contain children blocks like `<p>`, so it does not have `md-end-block` class, while `h1` would have that class. `md-focus-container` class will apply to `li` which contains a `.md-focus` block.
