---
layout: post
title: Table Editing
category: basic
author: typora.io
tags:
- markdown
- tutorial
- table
typora-root-url: ../../
typora-copy-images-to: "../../media/table-editing"
last_modified_at: 2025-01-17
---

* Outline
{:toc}

## Tables in Markdown

Typora supports the table syntax of [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/). For example, it will parse the following text in a Markdown file into a table.

> ```gfm
> |First Header | Second Header|
> |------------ | -------------|
> |Content from cell 1 | Content from cell 2|
> |Content in the first column | Content in the second column|
> ```

## Table Editing in Typora

In Typora, you can write or edit the Markdown text to add or modify tables.

We also provide options via menu entry, the context menu, shortcut keys, drag & move and tooltips to make table editing easier to use in the GUI.

<figure style="text-align:center;">
    <img src="/media/new-73/Screen Shot 2019-07-26 at 01.03.21.png" style="zoom:50%;display:inline-block;vertical-align:middle;"/>
     <figcaption>Table Menu in Typora</figcaption>
</figure>

### Create Table in Typora

To create a table in Typora, you can simply write out a table header in Markdown.

```markdown
|First Header | Second Header|
```

Or, you can also insert a table from the menu bar.

A table must have table headers and at least one row and one column.

### Add Row in Table

Press <kbd>Command/Ctrl</kbd>+<kbd>Enter</kbd> to quickly insert an empty row under the current table row, or use the Context menu (right click).

In newer versions, you can add rows just by pressing <kbd>Tab</kbd>.

<img src="/media/new-10/CleanShot 2021-04-05 at 23.43.07.gif" alt="CleanShot 2021-04-05 at 23.43.07" style="zoom:50%;" />

### Delete Row in Table

The delete line command (<kbd>Shift</kbd>+<kbd>Alt</kbd>+<kbd>Ctrl/Command</kbd>+<kbd>L</kbd>) or delete table row command  (<kbd>Shift</kbd>+<kbd>Ctrl/Command</kbd>+<kbd>Backspace</kbd>) will delete the current table row in a table, or use the Context menu (right click).

### Add/Delete Column in Table

Right click on a table cell and, in the Context menu, there are menu items for adding/removing table columns.

### Resize Table

Put the cursor inside a table and a table tooltip will show above the table header. Click the far left icon and you will be able to resize the table.

If you want to make the table larger than 6 columns or 10 rows, you can click the row/column number and enter a number.

![Snip20170227_2](/media/table-editing/Snip20170227_2.png)

### Text Alignment in Column

In [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/), column alignment can be specified as follows:

```markdown
| Default | Left  | Right | Center |
| ------- | :---- | ----: | :----: |
| cell1   | cell2 | cell3 | cell4  |
```

In Typora, you can simply change text alignment for a column by selecting the related alignment icon from the table tooltip as follows:

<img src="/media/table-editing/CleanShot 2023-12-30 at 18.24.09@2x.png" alt="CleanShot 2023-12-30 at 18.24.09@2x" style="zoom:50%;" />

With alignment set, Typora will add an attribute like `style="text-align: left"` to the current column (`<td>`), but the final alignment can still be changed by CSS rules in the current theme or custom CSS.

### Move Row/Column

It's easy to reorder rows/columns through Typora's WYSIWYG feature. Just click on the left/top border of a row/column and use drag and drop to move it:

<p style="text-align:center"><video src="/media/table-editing/move-row-col.mp4" style="width:540px;" autoplay="autoplay" mute="mute" loop="loop"></video></p>

### Touch Bar Support

Tables can also be altered using the Touch Bar on certain MacBook laptops.

![TouchBar](/media/table-editing/TouchBarShot.png)