---
layout: post
title: Install and Use Pandoc
category: how-to
author: typora.io
tags: [pandoc, tutorial, docx]
typora-root-url: ../
---

TL;DR:

Typora requires [Pandoc](http://pandoc.org/) for some of its advanced features. If you don't have Pandoc (or have a version older than v1.16), please download and run the installer from **[Pandoc Dsownload Page](https://github.com/jgm/pandoc/releases/latest)**.

You may need to restart Typora after install Pandoc if you receive an error that Typora cannot find Pandoc.

For Windows users, if Typora is still saying it cannot find Pandoc, you may need to restart your PC.

# Pandoc Integration

In Typora, import function and export function for some file formats (including docx, odt, rtf, epub, LaTeX and wiki) are powered by a 3rd party software named Pandoc. Those features require Pandoc (≥ v1.16) to be installed.

Please note that installation of Pandoc is optional for Typora, if you do not need advanced import/export support in Typora, then you do not have to install Pandoc on your computer.

This document will show how to install Pandoc and use Typora with Pandoc for full import/export functions.

## What is Pandoc

[Pandoc](http://pandoc.org/) is a universal document text converter. Typora uses it to support file import/export features for several file types. 

## Install Pandoc

### For Mac Users

Briefly speaking, there are two recommended ways.

##### Install from downloaded package installer

Download a package installer from Pandoc's [download page](https://github.com/jgm/pandoc/releases/latest), open it and follow the instructions for installation.

![Snip20160502_1](/media/pandoc/Snip20160502_1.png)

#####  Install from Homebrew

For developers using [Homebrew](http://brew.sh/), installing Pandoc can be one line from terminal:

```sh
brew install pandoc
```

### For Windows Users

Download the `pandoc-*-window.msi` from Pandoc's [download page](https://github.com/jgm/pandoc/releases/latest), open it and follow the instructions for installation.

![pandoc-win](/media/pandoc/pandoc-win.PNG)

## Config Pandoc Path

If Typora still shows "Require Pandoc to Continue" even after installed pandoc, please try restart Typora. If typora still cannot find pandoc after restart, you can manunlly input pandoc path on `Preferences Panel` → `Export` → `General`.

![pandoc path](/media/export/Screen%20Shot%202021-01-18%20at%2022.51.30.png)

## Use Pandoc

After Pandoc is installed, then you can import supported file types by clicking File -> Import from the menu bar, or simply drag and drop a file into Typora. There are also new Export functions available from the menu bar. Pandoc will run in background for those tasks and then exit automatically, so you may not notice it.

## FAQ

#### Which version of Pandoc is supported?

Versions ≥ 1.16 are required. The latest version, the better. So updating Pandoc is encouraged if your Pandoc version is too old.

#### Can Typora work without Pandoc?

Yes. Only import and export (other than HTML/PDF file types) needs it.

#### Which file types can be imported or exported by Typora?

Import supports files with these extensions: .docx, .latex, .tex, .ltx, .rst, .rest, .org, .wiki, .dokuwiki, .textile, .opml, .epub.

Export supports file formats of: HTML, PDF (these two does not need Typora), Docx, odt, rtf, Epub, LaTeX, Media Wiki.

Pandoc itself supports more file types which Typora does not yet integrate. It has more details [here](http://pandoc.org/).

#### What's the difference between exporting by Typora and exporting by using Pandoc from command line?

Exporting by Typora is also powered by Pandoc, yet Typora will not convert directly from markdown to target file type, instead, it converts to an inner format Pandoc can read and then write as target file type. In detail:

- If you run Pandoc from command line, then you need to specify its markdown parser (from Pandoc Markdown, [CommonMark](http://commonmark.org/), [PHP Markdown Extra](https://michelf.ca/projects/php-markdown/extra/), [GitHub-Flavored Markdown](https://help.github.com/articles/github-flavored-markdown/)).
- While exporting using Typora, Typora will pass its inner AST to Pandoc for file conversion. In other words, the format of blocks or inline elements in exported output will always be consistent with what you see in Typora and exported HTML/PDF. Yet, the styling may be different.
- Some Markdown syntax extensions invented by Pandoc Markdown, like citations, are not supported when you export from Typora, as only Markdown syntax Typora supports will be correctly exported. But we may support more extended markdown syntax in future.
- `[TOC]` will be correctly exported from Typora for all file types. Highlight and underline will be supported for LaTeX, rtf, Epub, wiki formats and sometimes Docx. Yet, they are only supported for HTML based file formats in raw Pandoc. Other block and inline elements is basically both supported by raw Pandoc and Typora+Pandoc.

#### Can all block/inline element types be exported correctly?

Exporting Task lists are not supported yet. Underline and highlight for `.docx` is supported only if they are not used inside or outside other inline styles. Underlining and highlights are not support for OpenOffice(`.odt`). Embeddeding .gif files is not support for LaTeX. Other block or inline elements can be exported, but the styles cannot be 100% matched when imported or exported.

#### How to uninstall Pandoc for mac?

Follow [Pandoc's official instructions](http://pandoc.org/installing.html):

> If you later want to uninstall the package, you can do so by downloading [this script](https://raw.githubusercontent.com/jgm/pandoc/master/osx/uninstall-pandoc.pl) and running it with `perl uninstall-pandoc.pl`".

#### Found a bug and unsupported syntax for exporting?

Contact us <hi@typora.io>, and please provide a sample `.md` file, so we can reproduce the bug. 

If you have a bug/feature request for Pandoc, you please contact its community via [pandoc-discuss](https://groups.google.com/forum/#!forum/pandoc-discuss).
