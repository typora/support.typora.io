---
layout: post
title: File Management
author: typora.io
category: basic
tags: [files, search]
typora-root-url: ../
typora-copy-images-to: ../media/files
---

>  This document may get updated after more or better file management features being introduced in future.

* Outline
{:toc}
## Open Folder

You could select a folder in the open file dialog popup from `File` → `Open` menu to open a folder in Typora. Actually you do not need to open folder explicitly in this way, when you open a file, its parent folder will be automatically loaded, you could check the folder from "Files Sidebar", which will be introduce below.

## Files Sidebar

User can toggle sidebar from menubar or from titlebar on macOS and from status bar on Windows/Linux.

Typora has two types of sidebar:

- Outline Panel (display *table of contents* of current document)
- File Tree (display loaded folder in tree hierarchy)
- File List (display files in loaded folder as lists)

<div  style="text-align:center">
  <figure style="margin:0;display:inline-block;">
    <img src="/media/files/CleanShot 2019-01-06 at 00.12.18@2x.png" alt="toggle sidebar on macOS" style="zoom:50%;height: 158px;" />	
    <figcaption><center><i>Toggle Sidebar on macOS</i></center></figcaption>
  </figure>
  <figure  style="margin:0;display:inline-block;">
    <img src="/media/files/CleanShot 2019-01-06 at 00.13.25@2x.png" alt="toggle sidebar on macOS" style="zoom:50%;height: 158px;" />	
    <figcaption><center><i>Toggle Sidebar on Windows/Linux</i></center></figcaption>
  </figure>
</div>

In file tree mode, currently only folder and files that are supported by Typora (Markdown file, text file, etc) is displayed.

### Actions in File Sidebar

Users could hover on side panel to show more buttons. On the bottom of left side bar, user can pop up menu items for current folder.

<div style="text-align:center;">
  <img src="/media/files/Screen Shot 2019-01-06 at 00.42.56.png" style="zoom:50%;margin-right:16px;display:inline-block;" />
  <img src="/media/files/Screen Shot 2019-01-06 at 00.43.20.png" style="zoom:50%;margin-left:16px;display:inline-block;" />
</div>
Other supported options can be found in context menu of specific file/folder. Supported actions includes:

- Open
- Open in New Window
- Undo File Operations
- New File/Folder
- Duplicate
- Rename
- Delete (Move to Trash)
- Copy File Path
- Reveal in Finder or Explorer
- ...

### Refresh File List / Tree

Typora will watch file changes in opened folder, and the file tree / list will be updated automatically when change happens, such as file being moved or deleted. 

But in case the file tree / list does not updated correctly, you could perform a manual refresh by click "Refresh" item in the bottom menu of side bar.

### Switch Folder

You could click "Open Folder..." item in the menu of file sidebar to open or switch current folder position.

### Sort Files

User can sort files by alphabet, natural order[^nature-sort] or modified date. Sort type can be changed from menu of file sidebar.

![Screen Shot 2018-10-23 at 00.28.46](/media/new-59/Screen Shot 2018-10-23 at 00.28.46.png)

[^nature-sort]: We will sort by file name naturally, for example: 1-xxx, 2-xxx, 10-xxx instead of in alphabet order (1-xxx, 10-xxx, 2-xxx).

### Move File

File or folder can be moved by drag and drop in file tree panel.

<video preload="preload" preload="auto" autoplay="autoplay" style="width: 100%;" muted="muted" loop>
  <source src="/media/files/move-files.mp4" type="video/mp4">
</video>



You could also drag and drop between Finder/Explorer and Typora's sidebar.

<video src="/media/files/move to finder.mp4" preload="auto" autoplay="autoplay" style="width: 100%;" muted="muted" loop ></video>

Also, drag file/folder from sidebar to writing area to would insert links towards dragged files.

### Undo File Operation

You could undo last file operation such as move, rename or delete (only on macOS) file.

<video preload="auto" autoplay="autoplay" style="width: 100%;" muted="muted" loop>
  <source src="/media/files/undo.mp4" type="video/mp4">
</video> 

Please note that only last **one** file operation in Typora is undoable, on Windows/Linux, delete file is not undoable, and it may fail in some case (for example, file exists at target file when undo move file operation). 

## Links to File

You could use hyperlink syntax ( `[label](src)` ) to create links that links to other files/folder, the `src` part can be either absolute path or relative path, for example: `[Readme](readme.md)`.

## Open Quickly

The quick open panel can be popped up by pressing <kbd>Command+Shift+O</kbd> (*on macOS*) or <kbd>Ctrl+P</kbd> (*on Windows/Linux*), or click "Open Quickly" from `File` menu.

You could use fuzzy search to find & open files in current folder quickly.

<img src="/media/files/Screen Shot 2019-01-24 at 23.39.15.png" style="zoom:50%" />

## Global Search

<img src="/media/files/Screen Shot 2019-01-06 at 22.18.56.png" style="zoom:50%" />

You could click the "Search" icon on side panel on macOS or just scroll top on side panel on Windows/Linux version of Typora to show global search input. Or use hotkey <kbd>Command(Ctrl) + Shift + F</kbd> to open global search.

#### Tags

Typora does not support `#tags` natively, but if you use `#tags` in your article, you could search "#tags" in global search to find all matched files.

## Set Default Folder

As a file based Markdown editor, Typora does not have concepts like "default working folder", but if you want Typora to load certain folder on launch, you could set a folder in Typora's "launch options".

<img src="/media/files/Screen Shot 2019-01-06 at 22.39.31.png" style="zoom:50%;" />

## JumpList (Windows)

Typora will put recent used folders/files on the jump list of Typora, you could **pin** frequently used file/folder and access them quickly from task bar.

<img src="/media/files/jump list.PNG" style="zoom:75%;" />

Recent file and recent folder can be cleared by click "Open Recent" → "Clear Items" from File menu.

---