---
layout: post
title: File Management
author: typora.io
category: basic
tags:
- files
- search
typora-root-url: ../../
typora-copy-images-to: "../../media/files"
last_modified_at: 2025-01-17
---

>  This document may get updated after more or better file management features being introduced in future.

* Outline
{:toc}
## Open Folder

You can select a folder in the open file dialog popup from the `File` → `Open` menu to open a folder in Typora. Although you do not need to open the folder explicitly in this way, when you open a file, its parent folder will be automatically loaded. You can check the folder from the "Files Sidebar", which will be introduced below.

## Files Sidebar

The user can toggle the sidebar from the menubar or from the titlebar on macOS and from the status bar on Windows/Linux.

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

In file tree mode, currently only folder and files that are supported by Typora (Markdown file, text file, etc) will be displayed.

### Actions in File Sidebar

Users can hover on the side panel to show more buttons. At the bottom of the left side bar, users can pop up menu items for the current folder.

<div style="text-align:center;">
  <img src="/media/files/Screen Shot 2019-01-06 at 00.42.56.png" style="zoom:50%;margin-right:16px;display:inline-block;" />
  <img src="/media/files/Screen Shot 2019-01-06 at 00.43.20.png" style="zoom:50%;margin-left:16px;display:inline-block;" />
</div>
Other supported options can be found in the context menu of the specific file/folder. Supported actions include:

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

Typora will watch for file changes in the opened folder, and the file tree / list will be updated automatically when changes happen, such as a file being moved or deleted. 

In case the file tree / list does not update correctly, you can perform a manual refresh by clicking the "Refresh" item in the bottom menu of the side bar.

### Switch Folder

You can click the "Open Folder..." item in the menu of the file sidebar to open or switch the current folder position.

### Sort Files

Users can sort files by alphabet, natural order[^nature-sort], modified date and creation date. Sort type can be changed from the menu of the file sidebar. The action for each button is:

![sort](/media/files/sort.png)

1. Enable / Disable `Group by Folder`. 

   When enabled in the file tree view, all folders will be displayed before files. When disabled in the file tree view, folders and files are mixed and sorted. 

   When enabled in the file list view, articles will be grouped by their parent folder and sorted within the same folder. When disabled in the file list view, articles are sorted across different folders.

2. Sort by `natural order` ascending / descending.

3. Sort by `alphabet order` ascending / descending.

4. Sort by `modified date ` ascending / descending.

5. Sort by `created date` ascending / descending.

[^nature-sort]: We will sort by file name naturally, for example: 1-xxx, 2-xxx, 10-xxx instead of in alphabet order (1-xxx, 10-xxx, 2-xxx).

### Move File

Files or folders can be moved by drag and drop in the file tree panel.

<video preload="preload" preload="auto" autoplay="autoplay" style="width: 100%;" muted="muted" loop>
  <source src="/media/files/move-files.mp4" type="video/mp4">
</video>



You can also drag and drop between Finder/Explorer and Typora's sidebar.

<video src="/media/files/move to finder.mp4" preload="auto" autoplay="autoplay" style="width: 100%;" muted="muted" loop ></video>

Also, dragging a file/folder from the sidebar to the writing area would insert a link towards the dragged file/folder.

### Undo File Operation

You can undo the last file operation such as move, rename or delete (only on macOS) the file.

<video preload="auto" autoplay="autoplay" style="width: 100%;" muted="muted" loop>
  <source src="/media/files/undo.mp4" type="video/mp4">
</video> 

Please note that only the last **one** file operation in Typora is undoable, on Windows/Linux, delete file is not undoable, and it may fail in some cases (for example, the file already exists at the target location when undoing the move file operation). 

### Remove Folder from Recent Locations

You can hover on folders under "Recent Locations" in the files sidebar, and click the "trash" icon to remove the folder from the list.

<img src="/media/files/Screenshot 2023-07-04 at 16.40.25.png" alt="Screenshot 2023-07-04 at 16.40.25" style="zoom:50%;" />

### Pin Folders

You can hover on folders under "Recent Locations" in the files sidebar and click the "Pin" icon to pin the folder onto the list. Pinned folders will also be included in the `File` → `Open Recent` menubar and [Open Quickly](#open-quickly).

<img src="/media/files/Screenshot 2023-07-04 at 16.42.22.png" alt="Screenshot 2023-07-04 at 16.42.22" style="zoom:50%;" />



## Links to File

You can use hyperlink syntax ( `[label](src)` ) to create links that link to other files/folders, the `src` part can be either the absolute path or relative path, for example: `[Readme](readme.md)`.

If the target file does not exist, Typora will guide you to create the file automatically.

If you want to jump to targeted positions in other files, you can append an anchor after the file target. For example, `[Readme](readme.md#header-1)` allows the user to jump to the "header 1" position of `readme.md`. You can read [internal links](/Links/#internal-links) about how to write an anchor.

## Open Quickly

The quick open panel can be popped up by pressing <kbd>Command+Shift+O</kbd> (*on macOS*) or <kbd>Ctrl+P</kbd> (*on Windows/Linux*), or click "Open Quickly" from the `File` menu.

You can use fuzzy search to find & open files in the current folder quickly.

<img src="/media/files/Screen Shot 2019-01-24 at 23.39.15.png" style="zoom:50%" />

## Global Search

<img src="/media/files/Screen Shot 2019-01-06 at 22.18.56.png" style="zoom:50%" />

You can click the "Search" icon on the side panel on macOS or just scroll to the top of the side panel in the Windows/Linux version of Typora to show the global search input. Or use the hotkey <kbd>Command(Ctrl) + Shift + F</kbd> to open global search.

#### Tags

Typora does not support `#tags` natively, but if you use `#tags` in your article, you can search "#tags" in the global search to find all matched files.

## Recent Files / Folders

Recent files / folders are recorded when you use Typora to open a file or folder. You can access recent files / folders from

- Menubar →  `File` → `Open Recent`.
- [Open Quickly](#open-quickly) Panel.
- [Action Panel](#switch-folder) from the files sidebar.
- Context menu when right clicking on the Typora icon on the Dock (macOS) or Taskbar (Windows).

If you do not want a folder to get flushed or removed automatically, you can [pin this folder](#pin-folders).

To clear recent files / folders, you can click `File` → `Open Recent` → `Clear Items` from the menu bar to clear all historic records. Please click "Clear Recent and Pinned Folders / Files" or select "Also clear pinned folders" if you want to clear recent files / folders and pinned folders.

## Set Default Folder on Launch

As a file based Markdown editor, Typora does not have concepts like "default working folder", but if you want Typora to load a certain folder on launch, you could set a folder in Typora's "launch options".

<img src="/media/files/Screen Shot 2019-01-06 at 22.39.31.png" style="zoom:50%;" />

## Reopen Last File on Launch

For the Windows / Linux version, you can set this in `Preferences Panel` → `General` → `On Launch`.

![image](https://user-images.githubusercontent.com/1621242/131283200-36c2c2fc-16d4-4257-89f4-dadf778f5406.png)

For the macOS version, you can do the following:

1. Choose Apple menu > System Preferences, then click General. Open General preferences.
2. **Uncheck** “Close windows when quitting an app.”

<img src="https://user-images.githubusercontent.com/1621242/131282682-a6c4a25c-c6b5-403c-ad5e-ad5918a99386.png" style="zoom:50%;" />

You can read more on [Prevent apps and windows from reopening](https://support.apple.com/en-us/HT204005)

## JumpList (Windows)

Typora will put recent used folders/files on the jump list of Typora, you can **pin** frequently used folders/files and access them quickly from the task bar.

<img src="/media/files/jump list.PNG" style="zoom:75%;" />

Recent files and folders can be cleared by clicking "Open Recent" → "Clear Items" from the File menu.

---
