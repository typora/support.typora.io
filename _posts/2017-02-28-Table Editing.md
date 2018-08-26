---
layout: post
title: Table Editing
category: basic
author: typora.io
tags: [markdown, tutorial, table]
typora-root-url: ../
typora-copy-images-to: ../media/table-editing
---

* Outline
{:toc}
## Tables in Markdown

Typora supports table syntax of [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/):

It will parse following text in a markdown file into a table.

> ```gfm
> |First Header | Second Header|
> |------------ | -------------|
> |Content from cell 1 | Content from cell 2|
> |Content in the first column | Content in the second column|
> ```

## Create Table in Typora

To create a table in Typora, you could simplify write down a table header in markdown.

```markdown
|First Header | Second Header|
```

And then press `Return` key.

Also, you could also insert table from the menu bar.

A table must have table headers and at least one row and one column.

## Add Row in Table

Press `Command/Ctrl+Enter` to quickly insert an empty row under current table row. Context menu is also available for add row action.

## Delete Row in Table

The delete line command (`Shift+Command/Ctrl+L`) will delete current table row in a table. Context menu is also available for delete row action.

## Add/Delete Column in Table

Right click on a table cell, and in the submenu of `table` in context menu, there's menu items for add/remove table columns.

If you have a Macbook with **Touch Bar**, you could also use buttons from Touch Bar for add/move/delete table row/column.

## Resize Table

Put the cursor inside a table and a table tooltip will show above the table header. Click the most left icon, and you will be able to resize the table like most rich editors.

If you want to make the table larger than 6 columns or 10 rows, you could click the row/column number input and input a proper number.

![Snip20170227_2](/media/table-editing/Snip20170227_2.png)

## Text Alignment in Column

In [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/), column alignment is configurable like following:

```markdown
| Default | Left  | Right | Center |
| ------- | :---- | ----: | :----: |
| cell1   | cell2 | cell3 | cell4  |
```

In typora, you could simply change text alignment under a column by selecting related alignment icon from table tooltip.

With alignment set, Typora will add attribute like `style="text-align: left"` to affected column (`<td>`), but the final alignment can still be changed by CSS rules in current theme or custom CSS.

## Move Row/Column

Reorder row/column is also very easy thanks to Typora's WYSIWYG feature. Just move you mouse on the left/top border of a row/column, and use drag & drop to render it:

<p style="text-align:center"><video src="/media/table-editing/move-row-col.mov" style="width:540px;" autoplay="autoplay" mute="mute" loop="loop"></video></p>

## Touch Bar Support.

Tables can also be tweaked via MacBook Touch Bar. 

![Touch Bar Shot 2017-02-28 at 00.40.32](/media/table-editing/Touch Bar Shot 2017-02-28 at 00.40.32-8213659.png)

