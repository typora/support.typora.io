---
layout: post
title: Whitespace and Line Breaks
author: typora.io
category: how-to
tags: [style, markdown]
typora-root-url: ../
typora-copy-images-to: ../media/whitespace
---

## Recommended Practices in Typora

Line breaks are very confusing in Markdown, our recommendations is that: 

- Use Typora's default setting.
- Write in Typora's hybrid view.
- Press `Enter` key to insert new paragraphs and avoid insert new lines. 
- If you do need single hard line break, use the syntax: `<br/>`.

## Single Line Breaks

Single line break is parsed differently across different Markdown engines, `CommonMark` will just ignore it, in other words, if you write:

```markdown
line 1
line 2
```

it will be rendered as

>  line 1 line 2

But other markdown engines may choose to keep it (like input box for issues in GitHub), or provide options whether to preserve it or not.

**In Typora**, we provide options whether to preserve it or not in preference panel, and you would choose the behavior when writing from menu bar quickly. By default, Typora will **Preserve line breaks in editing view and ignore them when print or export.** You could change this option in preference panel.

## Whitespace

Sequential whitespace are similar to Single Line Breaks, most Markdown engines will ignore them, for example, in `CommonMark`,

```markdown
Four    whitespace in between
```

will be converted to

```html
<p>Four    whitespace in between</p>
```

and you will only see

Four whitespace in between

By default, Typora will **Preserve sequential whitespace in editing view and ignore them when print or export.** You could change this option in preference panel.

If you do want to insert sequential whitespace that Other markdown engines support, you could

- Escape whitespace, input `\` before every whitespace
- Use HTML entity `&nbsp;`.

## `Enter` key in Typora

In Markdown, **two line break** means create a new paragraph, in Typora, when you press `Enter` key, a new paragraph is created, and if you switch to source code mode, two line breaks are inserted, for example, source of

> Paragraph 1
>
> Paragraph 2

is

```markdown
paragraph 1
(empty line)
paragraph 2
```

You could explicitly insert a single line break in editing view by pressing `Shift`+`Enter` key.

## Markdown Line Break

Markdown provides ways to insert single hard line break:

- Insert two whitespace and a line break.
- Insert HTML tag `<br/>` directly.

Almost all Markdown engines will parse them as hard line break in the output.

## Change Related Settings in Typora

We provide related settings in `Preference Panel` → `Markdown` → `Whitespace / LineBreak`,  or `Edit` -> `Whitespace and  Line Breaks` from menu bar.

<img src="/media/whitespace/Screen Shot 2021-12-11 at 16.03.29.png" alt="Screen Shot 2021-12-11 at 16.03.29" style="zoom:50%;" />
