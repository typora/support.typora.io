---
layout: post
title: Smart Punctuation (SmartyPants)
author: typora.io
category: how-to
tags: [markdown, smartypantys, quotes, dashes]
typora-root-url: ../
---

> *Note*: Both `Smart Quotes` and `Smart Dashes` are ignored in YAML/code/math block or in source code mode. 

## Smart Quotes 

You can find the option `Smart Quotes` from menu bar or from preferences panel. When it is enabled, Typora will convert `'` and `"` to curly quotes. For example, if you input:

```
"It's a 'word' in a quoted sentence."
```

it will become:

```
“It’s a ‘word’ in a quoted sentence.”
```

On Windows/Linux version, you could find more quote pair patterns in Preferences Panel, like "«abc» ", etc.

On macOS version, you could set quote patterns in `System Preferences` → `Keyboard` → `Text`. If it is changed, Typora will need a restart to apply it.

## Smart Dashes

You can find the option `Smart Dashes` from menu bar or from preferences panel. When it is enabled, Typora will convert `--` and `---` to `en dash` and `em dash`.  And `...` will be converted to ellipse (`…`).

> **Note**: On macOS, if "Convert on Input" is choose, both `--` and `---` will be converted to `em dash`, and for `en dash`, please `alt` + `-` to input it. This seems to be a macOS spec which Typora   also follows on macOS.

## Escape quotes and dashes

You could use `\"` and `\-` to escape quotes and dashes to prevent them from beging converted.

## "Convert on Input" and "Convert on Rendering"

Those options controls how punctuations are converted.

When **Convert on Input** is enabled, quotes and dashes are converted *immediately* when user is typing, and **converted one will be saved in the Markdown source code**.  If example, if smart dashes are enabled, and after user input `...`, he will got `… ` in both edit/preview view and source code. And user can cancel the inproper convert by `undo` operation.

When **Convert on Rendering** is enabled, when user input ASCII quotes and dashes, **the original ASCII will be saved in the source mode**, but in edit/preview view, Typora will render them as curly quotes or unicode dashes.  

The both ignore the convertion when user input in YAML/code/math blocks or in source code mode.

## Remap Unicode Punctuation on Parse

When smart dashes are enabled for "Convert on Input", if user input `<!-- comment -->` it will become `<!— comments —> ` since `--` are converted. 

To prevent such sutuation, Typora introduce this option. When it is enabled, Typora will remap unicode alternatives of markdown syntax as their ASCII one, e.g:

| Input                                              | Parsed as                 |
| -------------------------------------------------- | ------------------------- |
| `<!— comments —> `                                 | `<!-- comment -->`        |
| `![link](link «title»)` or `![link](link “title”)` | `![link](link "title")`   |
| ` — `                                              | ` --- ` (horizontal line) |
| `》 引用`                                          | `> 引用`                  |
| ...                                                |                           |

It also helps if your IME (Input Method Engine) cannot input ASCII punctuations directly.

When **Convert on Input** is enabled, this option will also be enabled automatically.

## Text Replacement

Typora does **not** support further text replacement rules (e.g: `->` to `→`, or `(C)` to `©`) out of the box. To do this:

- On macOS, we recommend you to do settings in `System Preferences` → `Keyboard` → `Text`. And enable "Text Replacement" in Typora's menu. Then Typora can use your text replacement rules.
- On Windows/Linux, we recommand you to use 3rd party apps for the configuration of text replacement. You could choose from [this list](https://alternativeto.net/software/textexpander/).
