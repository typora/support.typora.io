---
layout: post
title: Install and Use Pandoc
category: basic
author: typora.io
tags: [pandoc, tutorial, docx]
Typora-root-url: ../
---

# Pandoc Integration

Import and export of many file formats, including `.docx`, `.odt`, `.rtf`, `.epub`, `LaTeX` and `Wiki` files, is performed in Typora by [Pandoc](http://Pandoc.org), a universal document converter.

Typora requires `Pandoc-1.16` or a more recent version. If there is not a suitable version on your machine, you can download the installer from [Pandoc's download page](https://github.com/jgm/Pandoc/releases/latest). Windows users may need to restart the PC if after installation Typora reports that it still cannot find Pandoc.

Pandoc is available for Windows, OS X, and Linux systems, as well as as source code. If you do not need advanced import/export support in Typora, then you do not have to install Pandoc.

This document shows how to install Pandoc and use Typora with Pandoc for full import/export functions.

## Installing Pandoc

### Mac OS X

There are two recommended ways of installing Pandoc in OS X:

* [Using the package installer](#using-the-package-installer)
* [Using Homebrew](#using-homebrew)

##### Using the package installer

Download the package installer from Pandoc's [download page](https://github.com/jgm/Pandoc/releases/latest), open it, and follow the instructions for installation in the normal way:

![Snip20160502_1](/media/Pandoc/Snip20160502_1.png)

#####  Using Homebrew

If [homebrew](http://brew.sh/) is already installed in OS X, Pandoc can be added directly by entering in a Terminal window:

```sh
sudo brew install Pandoc
```

### For Windows Users

Download the `Pandoc-*-window.msi` from Pandoc's [download page](https://github.com/jgm/Pandoc/releases/latest), open it, and follow the instructions for installation:

![Pandoc-win](/media/Pandoc/Pandoc-win.PNG)

## Using Pandoc

After Pandoc is installed, you can import supported file types by clicking **File -> Import** from the menubar, or simply drag and drop a file into Typora. You also can export files from the menubar. Pandoc will run in the background for those tasks and exit automatically, so you may not notice it.

## FAQ

#### Which version of Pandoc is supported ?

Versions ≥ 1.16 are required; you must update Pandoc if your version is too old. Updating is encouraged.

 #### Can Typora work without Pandoc ?

Yes, but you will not be able to import and export other than HTML and PDF files.

#### Which file types can be imported or exported by Typora ?

Import supports file with extensions:  
 `.docx`, `.latex`, `.tex`, `.ltx`, `.rst, .rest`, `.org`, `.wiki`, `.dokuwiki`, `.textile`, `.opml`, `.epub`.

Export supports file formats:  
HTML, PDF (these two do not need Typora), `.docx`,`.odt`, `.rtf`, `.epub`, `.ltx`, `Media Wiki`.

Pandoc should support more file types not integrated into Typora, as detailed [here](http://Pandoc.org/).

#### What is the difference between exporting from Typora and exporting using Pandoc on the command line ?

Altough Typora exports also use Pandoc, Typora will not convert directly from Markdown to a target file type. Instead, it converts to an inner format that Pandoc can read and then write to a target file type:

- **If you run Pandoc from the command line** you must specify its Markdown parser from:  
  * [Pandoc Markdown](http://rmarkdown.rstudio.com/authoring_pandoc_markdown.html)
  * [CommonMark](http://commonmark.org/)
  * [PHP Markdown Extra](https://michelf.ca/projects/php-Markdown/extra/)
  * [GitHub-Flavored Markdown](https://help.github.com/articles/github-flavored-Markdown/)
- **If you export directly from Typora**, it will pass its inner Abstract Syntax Tree (**AST**) to Pandoc for file conversion. The format of  inline elements and blocks in the exported output will always be consistent with what you see in Typora or in exported HTML or PDF, but the styling may be different.
- **Some Markdown syntax specific to Pandoc Markdown**, including citations, will not be supported when you export directly from Typora, since only Markdown syntax will be correctly exported. We may support other Markdown syntax in future.
- **If you use Typora for exporting**, Tables of Contents `[toc]`will be correctly exported for all file types. Highlight and underline will be supported for LaTeX, RTF, EPUB, and Wiki formats, and sometimes for Microsoft Word `.docx` files, but HTML tags are only supported by raw Pandoc. Other block and inline elements are supported by both raw Pandoc and Typora + Pandoc.

#### Can all block/inline element types be exported correctly ?

Task list `[ ]`is not supported yet. Underline and highlight for `.docx` are supported only if they are not used within or along with other inline styles. Underline and highlight are not support for OpenOffice (`.odt`) files. Embedded `.gif` files are not support for LaTeX. Other block or inline elements can be exported, but the display styles may not completely match when imported and then exported.

#### How to uninstall Pandoc for OS X ?

Instructions can be found on [this page](http://Pandoc.org/installing.html) of Pandoc's official site:

> If you later want to uninstall the package, you can do so by downloading [this script](https://raw.githubusercontent.com/jgm/Pandoc/master/osx/uninstall-Pandoc.pl) and running it with `perl uninstall-Pandoc.pl`".

#### Reporting bugs and unsupported syntax for exporting ?

Contact us at <hi@typora.io>. It's best to provide a sample `.md` file, so we can reproduce the bug. If you found a bug or have a feature request for Pandoc, contact the Pandoc community via [Pandoc-discuss](https://groups.google.com/forum/#!forum/Pandoc-discuss).

