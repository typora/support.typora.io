---
layout: post
title: Line Spacing and Paragraph Spacing
author: typora.io
category: how-to
tags:
- style
- CSS
typora-root-url: ../../
---

Typora uses CSS to control spacing. You can customize **line spacing** (the space between lines within a paragraph) and **paragraph spacing** (the gap between paragraphs) by adding [Custom CSS](/Add-Custom-CSS/).

**Outline**

* Outline
{:toc}

## Quick Start

If you just want tighter spacing to see more content on screen, add the following to your `base.user.css` file (see [how to open it](/Add-Custom-CSS/)):

```css
#write {
  line-height: 1.2;
}

#write p,
#write li {
  margin-top: 0.25rem;
  margin-bottom: 0.25rem;
}
```

This gives you compact single-like spacing with minimal gaps between paragraphs. Adjust the values to your preference.

## Line Spacing

Line spacing is controlled by the CSS `line-height` property. Different themes set different defaults — for example, the GitHub theme uses `1.6`, while others may use `1.4` or `1.5`.

To change line spacing for the entire writing area:

```css
#write {
  line-height: 1.6; /* default for GitHub theme */
}
```

Common values:

| Value | Effect |
|-------|--------|
| `1.0` | No extra space between lines (very tight) |
| `1.2` | Tight, compact spacing |
| `1.4` – `1.6` | Comfortable reading (most theme defaults) |
| `1.8` – `2.0` | Double-spaced, similar to Word's "double" |

You can also use other CSS units:

```css
#write {
  line-height: 24px;   /* fixed pixel value */
  line-height: 1.5rem; /* relative to root font size */
  line-height: 1.5em;  /* relative to element font size */
  line-height: 1.5;    /* unitless — recommended, scales with font size */
}
```

> **Tip:** Unitless values (like `1.5`) are generally recommended over fixed units, because they scale proportionally when you change font size.

### Line Spacing for Specific Elements

You can set different line spacing for headings, paragraphs, or other elements:

```css
/* tighter headings */
h1, h2, h3, h4, h5, h6 {
  line-height: 1.2;
}

/* more space in paragraphs */
#write p {
  line-height: 1.8;
}

/* compact lists */
#write li {
  line-height: 1.3;
}

/* code blocks */
.md-fences {
  line-height: 1.4;
}
```

## Paragraph Spacing

Paragraph spacing is controlled by CSS `margin` properties. By default, Typora adds `1rem` of margin above and below each paragraph.

To reduce the gap between paragraphs:

```css
#write p {
  margin-top: 0.25rem;
  margin-bottom: 0.25rem;
}
```

To remove paragraph gaps entirely:

```css
#write p {
  margin-top: 0;
  margin-bottom: 0;
}
```

To increase paragraph spacing:

```css
#write p {
  margin-top: 1.5rem;
  margin-bottom: 1.5rem;
}
```

### Spacing for Other Block Elements

Paragraphs are not the only elements with spacing. You can adjust headings, lists, blockquotes, and code blocks too:

```css
/* heading spacing */
h1, h2, h3, h4, h5, h6 {
  margin-top: 1.5rem;
  margin-bottom: 0.5rem;
}

/* list item spacing */
#write li {
  margin-top: 0.15rem;
  margin-bottom: 0.15rem;
}

/* blockquote spacing */
blockquote {
  margin-top: 0.5rem;
  margin-bottom: 0.5rem;
}

/* code block spacing */
.md-fences {
  margin-top: 0.5rem;
  margin-bottom: 0.5rem;
}
```

## Full Example: Compact Layout

Here is a complete example for a compact, single-spaced layout that maximizes visible content:

```css
/* compact line spacing */
#write {
  line-height: 1.3;
}

/* minimal paragraph gaps */
#write p,
#write li {
  margin-top: 0.2rem;
  margin-bottom: 0.2rem;
}

/* tighter headings */
h1, h2, h3, h4, h5, h6 {
  line-height: 1.2;
  margin-top: 1rem;
  margin-bottom: 0.3rem;
}

/* compact blockquotes and code blocks */
blockquote,
.md-fences {
  margin-top: 0.4rem;
  margin-bottom: 0.4rem;
}
```

## Full Example: Relaxed Layout

For a more spacious, double-spaced feel:

```css
#write {
  line-height: 2.0;
}

#write p {
  margin-top: 1rem;
  margin-bottom: 1rem;
}

h1, h2, h3, h4, h5, h6 {
  margin-top: 2rem;
  margin-bottom: 1rem;
}
```

## Related

- [Add Custom CSS](/Add-Custom-CSS/) — where to place your CSS
- [Custom Font](/Custom-Font/) — change font family and size
- [Width of Writing Area](/Width-of-Writing-Area/) — adjust page width
- [Typesetting with CSS](/Typeset/) — more typesetting options
