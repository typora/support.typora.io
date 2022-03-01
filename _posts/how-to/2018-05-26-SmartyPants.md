---
layout: post
title: Smart Punctuation (SmartyPants)
author: typora.io
category: how-to
tags: [markdown, smartypantys, quotes, dashes]
typora-copy-images-to: ../../media/smart-pants
typora-root-url: ../../
---

> *Note*: Both `Smart Quotes` and `Smart Dashes` are ignored in YAML/code/math block or in source code mode. 

## Smart Quotes 

You can find the option `Smart Quotes` from menu bar or from preferences panel. 

<img src="/media/smart-pants/Screen Shot 2021-08-14 at 22.50.43.png" alt="Screen Shot 2021-08-14 at 22.50.43" style="zoom:50%;" />

When it is enabled, Typora will convert `'` and `"` to curly quotes. For example, if you input:

```
"It's a 'word' in a quoted sentence."
```

it will become:

```
“It’s a ‘word’ in a quoted sentence.”
```

On Windows/Linux version, you could find more quote pair patterns in Preferences Panel, like "«abc» ", etc.

<img src="/media/smart-pants/Screen Shot 2021-08-14 at 22.53.40.png" alt="Screen Shot 2021-08-14 at 22.53.40" style="zoom:50%;" />

On macOS version, you could set quote patterns in `System Preferences` → `Keyboard` → `Text`. If it is changed, Typora will need a restart to apply it.

<img src="/media/smart-pants/Screen Shot 2021-08-14 at 22.52.36.png" alt="Screen Shot 2021-08-14 at 22.52.36" style="zoom:50%;" />

## Smart Dashes

You can find the option `Smart Dashes` from menu bar or from preferences panel. When it is enabled, Typora will convert `--` and `---` to `en dash` and `em dash`.  And `...` will be converted to ellipse (`…`).

> **Note**: On macOS, if "Convert on Input" is choose, both `--` and `---` will be converted to `em dash`, and for `en dash`, please `alt` + `-` to input it. This seems to be a macOS spec which Typora   also follows on macOS.

## Escape quotes and dashes

You could use `\"` and `\-` to escape quotes and dashes to prevent them from being converted.

## "Convert on Input" and "Convert on Rendering"

Those options controls how punctuations are converted.

When **Convert on Input** is enabled, quotes and dashes are converted *immediately* when user is typing, and **converted one will be saved in the Markdown source code**.  As example, if smart dashes are enabled, and after user input `...`, he will get `… ` in both edit/preview tab and source code. And user can cancel the improper convert by `undo` operation.

When **Convert on Rendering** is enabled, typing in ASCII quotes and dashes **will save the original ASCII code on source mode**, but in edit/preview tab, Typora will render them as curly quotes or unicode dashes.  

Both ignore convertion when user input in YAML/code/math blocks or in source code mode.

## Remap Unicode Punctuation on Parse

When smart dashes are enabled for "Convert on Input", if user input `<!-- comment -->` it will become `<!— comments —> ` since `--` are converted. 

To prevent such situation, Typora introduce this option. When it is enabled, Typora will remap unicode alternatives of markdown syntax as their ASCII one, e.g:

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
- On Windows/Linux, we recommend you to use 3rd party apps for the configuration of text replacement. You could choose from [this list](https://alternativeto.net/software/textexpander/).
