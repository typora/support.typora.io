---
layout: post
title: Quick Start
date: 2006-01-01
category: basic
author: typora.io
tags: [quick-start, tutorial]
typora-root-url: ../../
---

# Welcome

Thank you for choosing **Typora**. This document will help you to start Typora.

* Outline
{:toc}

## Live Preview

**Typora** uses the feature: *Live Preview*, meaning that you can see these inline styles after you finish typing, and see block styles when you type or after you press `Enter` key or focus on another paragraph. Just try to type some markdown in Typora, and you will see how it works.

**Note**: Markdown tags for inline styles, such as `**` will be hidden or displayed smartly. Markdown tags for block level styles, such as `###` or `- [x]` will be hidden once the block is rendered.

## Markdown For Typora

**Typora** is using [GitHub Flavored Markdown](https://help.github.com/articles/github-flavored-markdown/), For more details, please open the [Markdown Reference](/Markdown-Reference/) guide.

To see full markdown Syntax references and extra usage, please check `Help`->`Markdown Reference` in the menu bar.

## Useful Shortcuts

For more shortcut keys and custom key bindings, you can refer [here](/Shortcut-Keys/).

## Files

### Open Quickly

The quick open panel can be popped up by pressing <kbd>Command+Shift+O</kbd> (*on macOS*) or <kbd>Ctrl+P</kbd> (*on Windows/Linux*), or click "Open Quickly" from `File` menu.

You can use fuzzy search to find & open files in the current folder quickly.

### Open Folder

You can select a folder in the open file dialog popup from `File` → `Open` menu to open a folder in Typora. You do not need to open a folder explicitly in this way, when you open a file, its parent folder will be automatically loaded. You can find the folder in the "Files Sidebar."

### Files Sidebar

Users can toggle the sidebar from the menubar or from the title bar on macOS and from the status bar on Windows/Linux.

Typora has three types of sidebar:

1. Outline Panel (display *table of contents* of current document)
2. File Tree (display loaded folder in tree hierarchy)
3. File List (display files in loaded folder as lists)

In file tree mode, currently only folder and files that are supported by Typora (Markdown file, text file, etc) are displayed.

### Global Search

You could click the "Search" icon on the side panel on macOS or just scroll top on the side panel on Windows/Linux version of Typora to show global search input. Or use hotkey <kbd>Command(Ctrl) + Shift + F</kbd> to open the global search.

## Outline

Mouse over the Windows toolbar and click the outline icon on the right top of the window can open the outline panel. This Panel can be pinned to the left side.

## Word Count

Moving the mouse over the Windows toolbar will make the word count visible. "Always show word count" can be set from the preference panel. Clicking it and the detailed word count tooltip will pop up. If a range of text is selected word count for selection will also be displayed on the word count tooltip.

## Copy

We created Typora and want to make it your default markdown editor, thus copy and paste means copy from another app or paste to another app, instead of *copy/paste from/to another markdown editor*. Therefore, by default, `Copy` means `Copy As HTML` ( and `Paste` means `Paste from HTML`).

However, after selecting "**Copy Markdown source by default**", Typora will copy selected text in HTML/markdown format (When pasting, rich editors will accept the HTML format, while plain text / code editor will accept the markdown source code format).

To **copy Markdown source code** explicitly, please use the shortcut key `shift+cmd+c` or `Copy as Markdown` from menu. To **Copy as HTML Code**, please select `Copy as HTML Code` from the menu.

## Smart Paste

**Typora** can analyze styles of the text content in your clipboard when pasting. For example, after pasting a `<h1>HEADING</h1>` from some website, Typora will keep the 'first level heading’ format instead of paste ‘heading’ as plain text.

To **paste as markdown source** or plain text, you should use `paste as plain text` or press the shortcut key: `shift+cmd+v`.

## Themes

Please refer to `Help` → `Custom Themes` from the menu bar.

## Publish

As of version 1.7 Typora supports the following export formats:

**File Formats**

- PDF
- HTML
- HTML (without styles)
- Image (.png)

**Application specific**

Application-specific software requires Pandoc to be installed. Please read how to [Install and Use Pandoc](/Install-and-Use-Pandoc/).

- Word (.docx)
- OpenOffice
- RTF
- Epub
- LaTex
- Media Wiki
- reStructuredText
- Textile
- OPML

More data format support for import/export will be integrated in the future.

## Command Line Tool

Please see [Use Typora from Shell or Cmd](/Use-Typora-From-Shell-or-cmd/).

## More Useful Tips & Documents

<https://support.typora.io/>

## And More ?

For more questions or feedback, please contact us by:

- Home Page: http://typora.io
- Email: <hi@typora.io>
- Twitter [@typora](https://twitter.com/typora)

We opened a Github issue page in case you want to start a discussion or as an alternative way to report bugs/suggestions: https://github.com/typora/typora-issues/issues