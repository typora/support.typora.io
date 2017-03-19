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

Typora supports the [Github Favored Markdown](https://guides.github.com/features/mastering-markdown/) table syntax. It will parse such Markdown into a table:

> ```gfm
> |First Header | Second Header|
> |------------ | -------------|
> |Content from cell 1 | Content from cell 2|
> |Content in the first column | Content in the second column|
> ```

### Creating A Table in Typora

To create a table in Typora, you first write the table header in Markdown.

```markdown
|First Header | Second Header|
```

And then press the `Return` key. You can also insert a table from the menu bar. 

A table must have table headers and at least one row and one column.

### Adding A Row

Press `[Command/Ctrl]+Enter` to quickly insert an empty row under current table row. You can also add a row viathe Context menu.

### Delete A Row

The **delete line command** (`Shift+[Command/Ctrl]+L`) will delete the current table row. The Context menu also can be used to delete a row.

### Add Or Delete A Column

Right click on a table cell. There are menu items to add or remove table columns in the  `table` submenu of the Context menu.

If you have a recent MacBook Pro with a **touchbar**, you can also use the buttons on the touchbar to add, move, or delete a table row or column.

### Resize A Table

Move the cursor into a table and a table `tooltip` will show above the table header. Click the left-most icon, and you will be able to resize the table.

If you want to make the table larger than the existing columns or rows, you can change the row and column numbers at the bottom of the tooltip window.

![Snip20170227_2](/media/table-editing/Snip20170227_2.png)

### Column Text Alignment

In [Github Favored Markdown](https://guides.github.com/features/mastering-markdown/), column alignment is configurable by adding colons in the second row:

```markdown
| Default | Left  | Right | Center |
| ------- | :---- | ----: | :----: |
| cell1   | cell2 | cell3 | cell4  |
```

Typora also allows you to change the text alignment of a column by selecting an alignment icon from the table tooltip. Typora will add the attribute `style="text-align: left/center/right"` to affected `<td>`s, but the final alignment can still be changed by editing the CSS rules in the current theme or in Custom CSS.

### Move A Row Or Column

Reordering rows and columns is easy thanks to Typora's WYSIWYG feature. Just move the cursor to the top left border of a row or column, and drag and drop to reorder it:

<p style="text-align:center"><video src="/media/table-editing/move-row-col.mov" style="width:540px;" autoplay="autoplay" mute="mute" loop="loop"></video></p>

## Touchbar Support.

Tables can also be tweaked via the MacBook Pro touchbar. 

![Touch Bar Shot 2017-02-28 at 00.40.32](/media/table-editing/Touch Bar Shot 2017-02-28 at 00.40.32-8213659.png)

