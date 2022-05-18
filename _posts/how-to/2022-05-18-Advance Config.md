---
layout: post
title: Advanced Settings File for Windows / Linux
author: typora.io
category: how-to
tags: [windows, linux]
typora-root-url: ../../
---

## Summary

### Open Advanced Config File

Some settings are hidden from the preferences panel and store into a `config.user.json` config file. You can open it from `Preferences Panel` → `General` →  `Advanced Settings` → `Open Advanced Settings`. If you do not have any application bond to the `.json` extension, Typora will just open the folder contains that file, you can open and edit the file with any text editor.

### Edit Advanced Setting

You can edit the advanced setting file (`config.user.json`) with any code editor or. text editor. The file is formatted in `JSON`, but supports `//` comments.

After save and restart Typora, your modifications are applied.

You can revert your changes by delete the file, or click `Reset Advanced Settings` in  `Preferences Panel` → `General` →  `Advanced Settings`.

#### Proper JSON Format

A proper json file is:

- Data is in name/value pairs
- Data is separated by commas
- Objects are encapsulated within the opening and closing curly brackets
- An empty object can be represented by {}
- Arrays are encapsulated within opening and closing square brackets
- An empty array can be represented by []
- A member is represented by a key-value pair, contained in double quotes
- The value of a member must be contained in double quotes, if it's a string
- Boolean values are represented using the true or false literals in lower case
- Number values are represented using double-precision floating-point format and shouldn't have leading zeroes

## Settings

### `defaultFontFamily`

For example, if your [custom CSS](/Add-Custom-CSS/) contains CSS styles like `p {font-family: sans-serif}`, then the value of `sansSerif` under `defaultFontFamily` is chosen.

### Auto Hide Menubar

You can enable "auto hide menubar" by setting `"autoHideMenuBar": false`. 

When enabled, the menubar is hidden, and you can toggle it is shown or hidden by press `alt` key.

### `searchService`

Please refer [Add Search Service](Add-Search-Service/).

### `keyBinding`

Please refer [Change Shortcut Keys on Windows / Linux](/Shortcut-Keys/#windows--linux).

### `monocolorEmoji`

When set to `true`, emojis will be in same color with your normal text on Windows. By default, emojis are colorful like your iOS or Android devices. 

### Launch Flags

The `flags` property stores arguments passed when launching Typora, you can refer to [Launch Arguments](Launch-Arguments/).







