---
layout: post
title: Quick Start
date: 2006-01-01
category: basic
author: typora.io
tags: [quick-start, tutorial]
typora-root-url: ../
---

# Welcome

Thank you for choosing **Typora**. This document will help you to start Typora.

* Outline
{:toc}

## Live Preview

**Typora** uses the feature: *Live Preview*, meaning that you could see these inline styles after you finish typing, and see block styles when you type or after you press `Enter` key or focus to another paragraph. Just try to type some markdown in typora, and you would see how it works.

**Note**: Markdown tags for inline styles, such as `**` will be hidden or displayed smartly. Markdown tags for block level styles, such as `###` or `- [x]` will be hidden once the block is rendered.

## Markdown For Typora

**Typora** is using [GitHub Flavored Markdown](https://help.github.com/articles/github-flavored-markdown/), For more detail, please open [Markdown Reference](Markdown%20Reference.md).

To see full markdown Syntax references and extra usage, please check `Help`->`Markdown Reference` in menu bar.

## Useful Shortcuts

For more shortcut keys and custom key bindings, you can refer [here](http://support.typora.io/Shortcut-Keys/).

## Files

### Open Quickly

The quick open panel can be popped up by pressing <kbd>Command+Shift+O</kbd> (*on macOS*) or <kbd>Ctrl+P</kbd> (*on Windows/Linux*), or click "Open Quickly" from `File` menu.

You could use fuzzy search to find & open files in current folder quickly.

### Open Folder

You could select a folder in the open file dialog popup from `File` → `Open` menu to open a folder in Typora. Actually you do not need to open folder explicitly in this way, when you open a file, its parent folder will be automatically loaded, you could check the folder from "Files Sidebar", which will be introduce below.

### Files Sidebar

User can toggle sidebar from menubar or from titlebar on macOS and from status bar on Windows/Linux.

Typora has two types of sidebar:

- Outline Panel (display *table of contents* of current document)
- File Tree (display loaded folder in tree hierarchy)
- File List (display files in loaded folder as lists)

In file tree mode, currently only folder and files that are supported by Typora (Markdown file, text file, etc) is displayed.

### Global Search

You could click the "Search" icon on side panel on macOS or just scroll top on side panel on Windows/Linux version of Typora to show global search input. Or use hotkey <kbd>Command(Ctrl) + Shift + F</kbd> to open global search.

## Outline

Mouse over the windows toolbar and click the outline icon on the right top of the window can open outline panel. This Panel can be pinned to left side.

## Word Count

Mouse over the windows toolbar will make word count visible. "Always show word count" can be set from preference panel. Click it will popup detailed word count tooltip. If a range of text is selected word count for selection will also be displayed on word count tooltip.

## Copy

We create typora and want to make it your default markdown editor, thus copy and paste means copy from another app or paste to another app, instead of *copy/paste from/to another markdown editor*. Therefore, by default, `Copy` means `Copy As HTML` ( and `Paste` means `Paste from HTML`). 

However, after click "**Copy Markdown source by default**", typora will copy selected text in HTML/markdown format (When pasting, rich editors will accept the HTML format, while plain text / code editor will accept the markdown source code format).

To **copy Markdown source code** explicitly, please use shortcut key `shift+cmd+c` or `Copy as Markdown` from menu. To **Copy as HTML Code**, please select `Copy as HTML Code` from menu.

## Smart Paste

**Typora** is able to analyze styles of the text content in your clipboard when pasting. For example, after pasting a `<h1>HEADING</h1>` from some website, typora will keep the 'first level heading’ format instead of paste ‘heading’ as plain text. 

To **paste as markdown source** or plain text, you should use `paste as plain text` or press the shortcut key: `shift+cmd+v`.

## Themes

Please refer to `Help` → `Custom Themes` from menu bar.

## Publish

Currently Typora only support to export as **PDF** or **HTML**. More data format support as import/export will be integrated in future.

## Command Line Tool

Please see <https://support.typora.io/Use-Typora-From-Shell-or-cmd/>.

## More Useful Tips & Documents

<https://support.typora.io/>

## And More ?

For more questions or feedbacks, please contact us by:

- Home Page: http://typora.io
- Email: <hi@typora.io>
- Twitter [@typora](https://twitter.com/typora)

We opened a Github issue page in case you want to start a discussion or as an alternative way to report bugs/suggestions: https://github.com/typora/typora-issues/issues
