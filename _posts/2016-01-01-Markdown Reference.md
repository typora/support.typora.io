## Overview

**Markdown** was created by John Guber of [Daring Fireball](http://daringfireball.net/). The original guideline is [here](http://daringfireball.net/projects/Markdown/syntax). Its syntax, however, varies between different parsers or editors: **Typora** uses [GitHub Flavored Markdown][GFM]. 

Please note that HTML fragments in your Markdown source will be recognized but not parsed or rendered. Also, there may be a minor amount of reformatting of the original Markdown source code after saving.

[TOC]

## Block Elements

### Paragraph and line breaks

A paragraph is simply one or more consecutive lines of text. In Markdown, paragraphs must be separated by more than one blank line. In Typora, you only need to press `Return` to create a new paragraph.

`Shift` + `Return` will create a single line break, but most Markdown parsers will ignore a single line break, so you must add two spaces at the end of a line or insert a `<br/>`  to make other Markdown parsers recognize a line break.

### Headers

Headers are marked with between one and six hash characters at the start of the line for header levels 1-6. For example:

```markdown
# This is an H1

## This is an H2

###### This is an H6
```

Enter the appropriate number of hashes followed by a space and then the title content. Typora will create a header as soon as you press the `Return` key.

### Blockquotes

Markdown uses email-style `>` characters for block quoting. They are entered as:

```markdown
> This is a blockquote with two paragraphs. This is first paragraph.
>
> This is second pragraph.

> This is another blockquote paragraph. An empty line separates two blockquotes.
```

You only need to input `>` followed by the quote contents to generate a blockquote paragraph. Typora will insert the line break for you.

A blockquote can be nested inside another blockquote by adding additional `>`

```
> This is the first level of quoting.
>
> > This is nested blockquote.
>
> Back to the first level.
```

### Lists

`* list item 1` will create an unordered list. The `*` symbol can be replaced with `+` or `-`.

`1. list item 1` will create an ordered list. The Markdown source code is:

```markdown
## un-ordered list
*   Red
*   Green
*   Blue

## ordered list
1.  Red
2. 	Green
3.	Blue
```

#### Task Lists

Task lists are lists with items marked as either incomplete [ ] or completed [x]. For example:

```markdown
- [ ] a task list item
- [ ] list syntax required
- [ ] normal **formatting**, @mentions, #1234 refs
- [ ] incomplete
- [x] completed
```

Click the checkbox before the item to change the complete/incomplete state.

### (Fenced) Code Blocks

Typora only supports fenced code blocks in Github Flavored Markdown (GFM). The original Markdown code block type is not supported. Enter three backticks  (left-most key on the number row) and press `return` to start the fenced code block. Another line containing three more backticks ends the fenced code block. 

```markdown
​```
function test() {
  console.log("notice the blank line before this function?");
}
​```
```

If you add an optional language identifier immediately after the first three backticks, the code block will be run through syntax highlighting. Language identifiers include `ruby`, `java`,`python`,  `markdown`, `kramdown`, `redcarpet`, and many others. 

```
​```ruby
require 'redcarpet'
Markdown = Redcarpet.new("Hello World!")
puts Markdown to_html
​```
```

### Math Blocks

You can render *LaTeX* mathematical expressions using **MathJax**. by inputting `$$`, then pressing the `Return` key. This will trigger an input field which will accept *Tex/LaTex* source. Here is an example:
$$
\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix} 
\mathbf{i} & \mathbf{j} & \mathbf{k} \\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0 \\
\end{vmatrix}
$$
In Markdown source file, math block is *LaTeX* expression wrapped by ‘$$’ mark:

```markdown
$$
\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix} 
\mathbf{i} & \mathbf{j} & \mathbf{k} \\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0 \\
\end{vmatrix}
$$
```

### Tables

Input `| First Header  | Second Header |` and press `return` key will create a table with two column.

After a table is created, focussing on that table will pop up a toolbar where you can resize, align, or delete the entire table. You can also use the contextual menu to copy, add and delete columns and rows.

The Markdown source code for tables is generated automatically by Typora. They look like this:

```markdown
| First Header  | Second Header |
| ------------- | ------------- |
| Content Cell  | Content Cell  |
| Content Cell  | Content Cell  |
```

You can also include inline Markdown such as \[links\]\(\), **bold**, _italics_, or ~~strikethrough~~.

Finally, by including colons `:` within the header row, you can define text to be left-aligned, right-aligned, or center-aligned:

```markdown
| Left-Aligned  | Center Aligned  | Right Aligned |
| :------------ |:---------------:| -----:|
| col 3 is      | some wordy text | $1600 |
| col 2 is      | centered        |   $12 |
| zebra stripes | are neat        |    $1 |
```

A colon on the left indicates a left-aligned column; a colon on the right indicates a right-aligned column; a colon on both sides indicates a center-aligned column.

### Footnotes

```markdown
You can create footnotes like this[^footnote].

[^footnote]: Here is the *text* of the **footnote**.
```

will produce:

You can create footnotes like this[^footnote].

[^footnote]: Here is the *text* of the **footnote**.

Mouse over the footnote superscript to see the content of the footnote.

### Horizontal Rules

Input `***` or `---` on a blank line and press `return` to draw a horizontal line.

------

### YAML Front Matters

Typora support [YAML Front Matters](http://jekyllrb.com/docs/frontmatter/) now. Input `---` at the top of the article and then press `Enter` to introduce one, or insert a metadata block from the menu.

### Table of Contents (TOC)

Input `[toc]` then press `Return` key to create a section for a Table of Contents. It will be populated with all the headers from the content. The Table of Contents will be updated automatically as you add, change, and rearranged the order of the headers. 

## Span Elements

Span elements will be parsed and rendered immediately after you enter them. Moving the cursor into a span element will expand the Markdown source. Here is the syntax of the span elements:

### Links

Markdown supports two style of links: Inline and Reference.

In both styles, the link text is delimited by [square brackets].

To create an inline link, use a set of regular parentheses immediately after the closing square bracket. Inside the parentheses, enter the URL to which you want the link to point, along with an optional title, surrounded by quotes. For example:

```markdown
This is [an example](http://example.com/ "Title") inline link.

[This link](http://example.net/) has no title attribute.
```

will produce:

This is [an example](http://example.com/"Title") inline link. (`<p>This is <a href="http://example.com/" title="Title">`)

[This link](http://example.net/) has no title attribute. (`<p><a href="http://example.net/">This link</a> has no title attribute`)

#### Internal Links

**You can set the href to headers**, which will create a bookmark that will jump to that section after clicking. For example:

Command (Ctrl in Windows) + Click [This link](#block-elements) will jump to the `Block Elements` header. To see how to write that, click that link with the  `⌘` key pressed to expand the element into Markdown source.

#### Reference Links

Reference-style links use a second set of square brackets, inside which you place a label of your choosing to identify the link:

```markdown
This is [an example][id] reference-style link.

Then, anywhere in the document, you define your link label like this, on a line by itself:

[id]: http://example.com/  "Optional Title Here"
```

In Typora, they will be rendered as:

This is [an example][id] reference-style link.

[id]: http://example.com/	"Optional Title Here"

The implicit link name shortcut allows you to omit the name of the link, in which case the link text itself is used as the name. Just use an empty set of square brackets. For example, to link the word “Google” to the google.com web site, you would simply write:

```markdown
[Google][]
And then define the link:

[Google]: http://google.com/
```

Clicking a link in Typora will expand it for editing; Command+Click will open it in your web browser.

### URLs

Typora allows you to insert URLs as links, wrapped by `<`brackets`>`.

`<i@Typora.io>` becomes <i@typora.io>.

Typora will also autolink standard URLs. e.g: www.google.com.

### Images

Image links are similar to other links, but require an additional `!` before the start of link:

```markdown
![Alt text](/path/to/img.jpg)

![Alt text](/path/to/img.jpg "Optional title")
```

You can drag and drop into Typora an image file or an image from a web browser. Modify the Markdown source code by clicking on the image. A relative path will be used if the image is in same directory or sub-directory as the current document when dragging and dropping.

If you’re using Markdown for building websites, you may specify a URL prefix for image preview in the local computer with the property `Typora-root-url` in the YAML front matter. For example, if you put `Typora-root-url:/User/Abner/Website/Typora.io/` into the front matter, and then `![alt](/blog/img/test.png)` will be treated as `![alt](file:///User/Abner/Website/Typora.io/blog/img/test.png)` in Typora.

![drag and drop image](http://Typora.io/img/drag-img.gif)

### Emphasis

Markdown treats asterisks (`*`) and underscores (`_`) as indicators of emphasis. Text wrapped with one `*` or `_` will be wrapped with an HTML `<em>` tag. E.g:

```markdown
*single asterisks*

_single underscores_
```

output: 

*single asterisks*

_single underscores_

GitHub Flavored Markdown (GFM) ignores underscores in words, as these are commonly used in code:

> wow_great_stuff
>
> do_this_and_do_that_and_another_thing.

To produce a literal asterisk or underscore where it would otherwise be used as an emphasis delimiter, you can backslash escape it:

```
\*this text is surrounded by literal asterisks\*
```

Typora recommends using the `*` marker for emphasis.

## Strong

double *’s or _’s will be wrapped with an HTML `<strong>` tag, e.g:

```markdown
**double asterisks**

__double underscores__
```

output:

**double asterisks**

__double underscores__

Typora recommends using the `**` symbol.

### Code

To indicate a span of code, wrap it with backtick quotes (`). Unlike a pre-formatted code block, a code span indicates code within a normal paragraph. For example:

```markdown
Use the `printf()` function.
```

will produce:

Use the `printf()` function.

### Strikethrough

GFM adds syntax to create strikethrough text, which is missing from standard Markdown.

`~~Mistaken text.~~` becomes ~~Mistaken text.~~

### Underline

Underline is powered by raw HTML.

`<u>Underline</u>` becomes <u>Underline</u>.

### Emoji :happy:

Input emoji with syntax `:smile:`. 

User can trigger auto-complete suggestions for emoji by pressing `ESC` key, or trigger it automatically after enable it on preference panel. Inputting UTF8 emoji characters directly using `Edit` -> `Emoji & Symbols` in the menu bar is also supported. 

### Inline Math

To use this feature, first, please enable it in `Preference` Panel -> `Markdown` Tab. Then use `$` to wrap TeX command, for example: `$\lim_{x \to \infty} \exp(-x) = 0$` will be rendered as a LaTeX command. 

To trigger inline preview for inline math: input “$”, then press the `ESC` key, then input a LaTeX command. A preview tooltip will be visible:

![inline-math](http://Typora.io/img/inline-math.gif)

### Subscript

To use this feature, first, please enable it in the `Preference` Panel -> `Markdown` Tab. Then use `~` to wrap subscript content, for example: `H~2~O`, `X~long\ text~`

### Superscript

To use this feature, first, please enable it in `Preference` Panel -> `Markdown` Tab. Then use `^` to wrap superscript content, for example: `X^2^`.

### Highlight

To use this feature, first, please enable it in `Preference` Panel -> `Markdown` Tab. Then use `==` to wrap highlight content, for example: `==highlight==`. 

[GFM]: https://help.github.com/articles/github-flavored-markdown/