---
layout: post
title: Quick Start
date: 2006-01-01
category: basic
author: typora.io
tags:
- quick-start
- tutorial
typora-root-url: ../../
last_modified_at: 2025-01-17
---

# Welcome

Thank you for choosing **Typora**. This document will help you get started with Typora.

* Outline
{:toc}

## Live Preview

**Typora** uses the feature: *Live Preview*, meaning that you can see inline styles as soon as you finish typing them and see block styles as you type or after you press the <kbd>Enter</kbd> key to focus on the next paragraph. Just try typing some Markdown in Typora, and you would see how it works.

**Note**: Markdown tags for inline styles, such as `**` will be hidden or displayed smartly. Markdown tags for block level styles, such as `###` or `- [x]` will be hidden once the block is rendered.

## Markdown For Typora

**Typora** use [GitHub Flavored Markdown](https://help.github.com/articles/github-flavored-markdown/), For more details, please open the [Markdown Reference](/Markdown-Reference/).

To see full Markdown Syntax references and extra usage, please check `Help`->`Markdown Reference` in the menu bar.

## Useful Shortcuts

For more shortcut keys and custom key bindings, you can refer [here](http://support.typora.io/Shortcut-Keys/).

## Files

### Open Quickly

The quick open panel can be popped up by pressing <kbd>Command</kbd> + <kbd>Shift</kbd> + <kbd>O</kbd> (*on macOS*), <kbd>Ctrl</kbd> + <kbd>P</kbd> (*on Windows/Linux*) or clicking "Open Quickly" from the `File` menu.

You can use fuzzy search to find & open files in the current folder quickly.

### Open Folder

You can select a folder in the open file dialog popup from `File` → `Open` in the menu to open a folder in Typora. Actually, you do not need to open a folder explicitly in this way as when you open a file its parent folder will be automatically loaded. You could check the folder from the "Files Sidebar", which will be introduced below.

### Files Sidebar

Users can toggle the sidebar using the menubar or from the titlebar on macOS and from the status bar on Windows/Linux.

Typora has two types of sidebar:

- Outline Panel (display *table of contents* of the current document)
- File Tree (display loaded folder in tree hierarchy)
- File List (display files in loaded folder as lists)

In file tree mode, currently only folders and files that are supported by Typora (Markdown file, text file, etc) are displayed.

### Global Search

You can click the "Search" icon in the side panel on macOS or just scroll to the top of the side panel in the Windows/Linux version of Typora to show the global search input. Alternatively, use the hotkey <kbd>Command/Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>F</kbd> to open the global search.

## Outline

Mouse over the windows toolbar and click the outline icon at the top right of the window to open the outline panel. This panel can be pinned to the left side.

## Word Count

Hovering over the windows toolbar with your cursor will also make the word count visible. "Always show word count" can be set from the preference panel. Clicking it will pop up a detailed word count tooltip. If a range of text is selected, the word count for the selection will also be displayed.

## Copy

We created Typora and want to make it your default Markdown editor, thus copy and paste means copy from another app or paste to another app, instead of *copy/paste from/to another Markdown editor*. Therefore, by default, `Copy` means `Copy As HTML` ( and `Paste` means `Paste from HTML`). 

However, after clicking "**Copy Markdown source by default**", Typora will copy selected text in HTML/Markdown format. (When pasting, rich editors will accept the HTML format, while plain text / code editors will accept the Markdown source code format).

To **copy Markdown source code** explicitly, please use the shortcut key <kbd>Shift</kbd> + <kbd>Command</kbd> + <kbd>C</kbd>  or use `Copy as Markdown` from the menu. To **Copy as HTML Code**, please select `Copy as HTML Code` from the menu.

## Smart Paste

**Typora** is able to analyze styles of the text content in your clipboard when pasting. For example, after pasting  `<h1>HEADING</h1>` from some HTML, Typora will keep the 'first level heading’ format instead of pasting ‘heading’ as plain text. 

To **paste as Markdown source** or plain text, you should use `paste as plain text` or use the shortcut key <kbd>Shift</kbd> + <kbd>Command</kbd> + <kbd>V</kbd>.

## Themes

Please refer to `Help` → `Custom Themes` from the menu bar.

## Publish

Currently, Typora supports exporting to **PDF**, **HTML**, **HTML (without styles)** and an **Image** format. More formats (like Word, RTF, etc) are supported via [pandoc](https://pandoc.org/). Please visit the [Export](https://support.typora.io/Export/) support page for further information.

## Command Line Tool

Please see <https://support.typora.io/Use-Typora-From-Shell-or-cmd/>.

## More Useful Tips & Documents

<https://support.typora.io/>

## And More?

For more questions or feedback, please contact us by:

- Home Page: http://typora.io
- Email: <hi@typora.io>
- Twitter [@typora](https://twitter.com/typora)

We opened a Github issue page in case you want to start a discussion or as an alternative way to report bugs/suggestions: https://github.com/typora/typora-issues/issues
