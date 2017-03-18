---
layout: post
title: Change Styles in Focus Mode
author: typora.io
category: how-to
tags: [style]
typora-root-url: ../
---

When Focus Mode is enabled, the `<body>` DOM will have the CSS class `on-focus-mode`, while focused block-level elements will have the CSS class `md-focus`. 

Blocks that can contain `md-focus` class are blocks that cannot contain children blocks and will contain a `md-end-block` class. For instance, `<blockquote>` can contain children blocks like `<p>`, so it does not have `md-end-block` class, while `h1` would have that class. `md-focus-container` class will apply to `li` which contains a `.md-focus` block.

Blocks with the `md-focus` class cannot contain child blocks and will contain an `md-end-block` class. For instance, `<blockquote>` can contain child blocks such as `<p>`, so it does not have an `md-end-block` class, while an `h1` block has that class. `md-focus-container` class will apply to list elements `li` which contain an `.md-focus` block.

Style changes under Focus Mode could for example be written way:

```scss
/*Following uses LESS syntax for better CSS structure*/

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