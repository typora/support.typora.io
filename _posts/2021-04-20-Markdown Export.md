---
layout: post
title: Convert & Reformat Markdown
category: how-to
author: typora.io
tags: [markdown, reformat, pretty]
typora-root-url: ../
typora-copy-images-to: ../media/reformat
---

Typora does not have built-in markdown convert, reformat or lint function, but there’s some workarounds:

## Convert to other markdown spec

You could open preferences panel, select “Export” section, then add a new export item based on “Markdown (other spec)” template.

<img src="/media/reformat/Screen Shot 2021-03-29 at 22.49.15.png" alt="Screen Shot 2021-03-29 at 22.49.15" style="zoom:50%;" />

<img src="/media/reformat/Screen Shot 2021-03-29 at 22.50.25.png" alt="Screen Shot 2021-03-29 at 22.50.25" style="zoom:50%;" />

<img src="/media/reformat/Screen Shot 2021-03-29 at 23.33.47.png" alt="Screen Shot 2021-03-29 at 23.33.47" style="zoom:50%;" />

Then select the markdown variants you want. 

Please note that in this process, your markdown file will be translated to an internal data model (AST), then translate to other markdown spec by pandoc, which means the conversation is not done line by line, some details that does not affect the final markdown representation will not be kept.

For example:

```markdown
[linke][typora] is a website

[typora]: http://www.typora.io
```

May become following content after export.

```markdown
[linke](http://www.typora.io) is a website
```

## Format option for Markdown export

Previous markdown export option also provide settings such as line width, that can be used to reformat your markdown file. Some settings include:

#### Line Wrap

Equals to `--columns=NUMBER` flag for pandoc. You can use this to set a hard line wrap, for example, if hard line wrap is set with text column width 80, then

```
(line 1) Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
```

will become

```
(line 1) Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
(line 2) incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
(line 3) nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
```

#### End of Line

Equals to `--eol=crlf|lf|native` for pandoc. Change end of line between Unix style (`\n`) or Windows style (`\r\n`).

#### Indent

 Equals to `--tab-stop=NUMBER` for pandoc. Specify the number of spaces per tab (default is 4).

#### Only allow ASCII characters

Equals to `--ascii` for pandoc. Use only ASCII characters in output when enabled, for example, `你好` will be converted into `&#20320;&#22909;`.

#### Other Options

You could append other pandoc arguments as well, 

## Reformat using Custom Commands

You could [make an export item with custom commands](Export/#other-formats-using-custom-commands). Then use 3rd tools, like [prettier](https://prettier.io/) or other tools to reformat your code.

Take [prettier](https://prettier.io/) for example.

Firstly, install it with `npm install -g prettier`. Then get its path by `which prettier`.

Then follow https://prettier.io/docs/en/cli.html, add format commands, for example:

```shell
prettier --single-quote --tab-width 4 --prose-wrap always --print-width 80 --write "${currentPath}"
```

On Windows, it may be something like

```cmd
node "C:\Program Files\nodejs\node_modules\prettier\bin-prettier.js" --print-width 80 --prose-wrap always "${currentPath}"
```

<img src="/media/reformat/Screen Shot 2021-03-30 at 17.09.18.png" alt="Screen Shot 2021-03-30 at 17.09.18" style="zoom:50%;" />

Then you can “format” the content from Export → Reformat on menu bar.

---

You could also combine export and format or lint by adding “Run Command” on “After Export” setting.