---
layout: post
title: Install and Use Pandoc
category: basic
author: typora.io
tags: [pandoc, tutorial, docx]
typora-root-url: ../
---

TL;DR:

Typora requires Pandoc (≥ v1.16). If you do not have Pandoc or only old version of Pandoc installed on your machine, you could:

Download installer from **[Download Page](https://github.com/jgm/pandoc/releases/latest)** and install or update [Pandoc](http://pandoc.org/).

For windows users, if Typora still saying it cannot found Pandoc, you may need try to restart your PC.

# Pandoc Integration

In Typora, import function and export function for some file formats (including docx, odt, rtf, epub, LaTeX and wiki) are powered by a 3rd party software named Pandoc. Those features requires Pandoc (≥ v1.16) to be installed.

Please note that install Pandoc is optional for Typora, if you do not need those advanced import/export support in Typora, then you do not have to install Pandoc on your computer.

This document would show how to install Pandoc and use Typora with Pandoc for full import/export functions.



## What is Pandoc

[Pandoc](http://pandoc.org/) is a universal document text converter. Typora use it to support file import/export features for several file types. 

## Install Pandoc

### For Mac User

Briefly speaking, there are two recommended ways.

##### Install from downloaded package installer

Download a package installer from Pandoc's [download page](https://github.com/jgm/pandoc/releases/latest), open it and follow the instructions for installation.

![Snip20160502_1](/media/pandoc/Snip20160502_1.png)

#####  Install from Homebrew

For developers using [Homebrew](http://brew.sh/), installing Pandoc can be one line from terminal:

```sh
sudo brew install pandoc
```

### For Windows User

Download the `pandoc-*-window.msi` from Pandoc's [download page](https://github.com/jgm/pandoc/releases/latest), open it and follow the instructions for installation.

![pandoc-win](/media/pandoc/pandoc-win.PNG)

## Use Pandoc

After Pandoc is installed, then you could import supported file types by clicking File -> Import from the menu bar, or simple drag and drop a file into Typora. Export function is also fully functional from the menu bar. Pandoc will run in backgrounds for those tasks and then exit automatically, so you may not feel it.

## FAQ

#### Which version of Pandoc is supported ?

Versions ≥ 1.16 is required. The latest version, the better. So updating Pandoc is encouraged if your Pandoc version is too old.

#### Can Typora work without Pandoc ?

Yes, only import and export (other than HTML/PDF file types) needs it.

#### Which file types can be imported or exported by Typora ?

Import supports file with these extensions: .docx, .latex, .tex, .ltx, .rst, .rest, .org, .wiki, .dokuwiki, .textile, .opml, .epub.

Export supports file formats of: HTML, PDF (these two does not need Typora), Docx, odt, rtf, Epub, LaTeX, Media Wiki.

Pandoc should support more file types which Typora did not integrate, detailed info is [here](http://pandoc.org/).

#### What's the difference between exporting by Typora and exporting by using Pandoc from command line ?

Exporting by Typora is also powered by Pandoc, yet Typora will not convert directly from markdown to target file type, instead, it converts to an inner format Pandoc can read and then write as target file type, so, in detail:

- If you run Pandoc from command line, then you need to specify its markdown parser from (Pandoc Markdown, [CommonMark](http://commonmark.org/), [PHP Markdown Extra](https://michelf.ca/projects/php-markdown/extra/), [GitHub-Flavored Markdown](https://help.github.com/articles/github-flavored-markdown/)), while exporting using Typora, Typora will pass its inner AST to Pandoc for file conversion. In other words, the format of blocks or inline elements in exported output will always be consistent as what you see in Typora and exported HTML/PDF. Yet, the styling maybe different.
- Some markdown syntax invented by Pandoc Markdown, like citations, are not supported when you exporting from Typora, since only markdown syntax Typora support will be correctly exported. But we may support more extended markdown syntax in future.
- If you use Typora for exporting, then`[TOC]` will be correctly exported for all file types. Highlight and underline will be supported for LaTeX, rtf, Epub, wiki formats and sometimes Docx. Yet, they are only supported for HTML based file formats in raw Pandoc. Other block and inline elements is basically both supported by raw Pandoc and Typora+Pandoc.

#### Can all block/inline element types be exported correctly ?

Task list is not supported yet. Underline and highlight for `.docx` is supported only if they are not used inside or outside other inline styles. Underline and highlight is not support for OpenOffice(`.odt`). Embedded .gif file is not support for LaTeX. Other block or inline elements can basically be exported. But the styles cannot be 100% matched when imported or exported.

#### How to uninstall Pandoc for mac ?

This is the instruction from [Pandoc's official site](http://pandoc.org/installing.html):

> If you later want to uninstall the package, you can do so by downloading [this script](https://raw.githubusercontent.com/jgm/pandoc/master/osx/uninstall-pandoc.pl) and running it with `perl uninstall-pandoc.pl`".

#### Found bug and unsupported syntax for exporting ?

Contact us <hi@typora.io>, better to provide a sample `.md` file, so we could reproduce the bug. 

If you found it is a bug/feature request for Pandoc, you could contact the community via [pandoc-discuss](https://groups.google.com/forum/#!forum/pandoc-discuss).

