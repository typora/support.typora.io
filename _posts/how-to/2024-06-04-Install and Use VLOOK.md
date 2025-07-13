---
layout: post
title: Install and Use VLOOK™ Themes and Plugins
category: how-to
author: typora.io
tags:
- themes
- plugins
- export
- html
- vlook
typora-root-url: ../../
typora-copy-images-to: "../../media/vlook"
last_modified_at: 2025-01-10
---

[中文说明](/zh/Install-and-Use-VLOOK/)

**VLOOK™ - Give Your Markdown a New Perspective!**



You can start a brand **new Markdown experience** in **just 3 steps**:

1.[Download and Configure](#Download and Configure)

2.[Install the Theme Package](#Install the Theme Package)

3.[Configure Export Options](#Configure Export Options)



# step 1: Download and Configure

**• Download the Plug-in:**

Download the latest version from the homepage of VLOOK™:

**[GitHub](https://github.com/MadMaxChow/VLOOK/releases)** 　　**[Gitee](https://gitee.com/madmaxchow/VLOOK/releases)**

**• Enable extended syntax:**

Enable all options under `Markdown Extended Syntax`, `Code Blocks` of Typora. See the figure below for details:

![Typora ▸ Preferences ▸ Markdown](/media/vlook/typora-opt1-light-en.png)



# step 2: Install the Theme Package

**• Install the Themes:**

1. The `released\themes` all CSS files are copied to Typora theme directory;
2. Where is the theme directory? You can navigate to this directory by clicking `Settings ▸ Appearance ▸ Open Theme Directory`.

**• Select Theme:**

1. Restart Typora;
2. Click the `Themes` menu, select to `Vlook ***` any topic can be in the form of naming.

**• Start Writing from the Template:**

It is recommended to create your own Markdown document based on the document samples of the VLOOK™ specification, so that you can get started faster.

All samples `.md` files in the directory `released/samples`



# step 3: Configure Export Options

**• Configure export setting:**

1. Start Typora and enter "**Preferences**"
2. Click "**Export**", add configuration (**select HTML as a template**), and name the configuration `VLOOK`

**• Install Meta Tag:**

1. Open the meta tag file: released\plugin\\**meta.txt**
2. Select and copy all contents
3. Paste to "**Append in &lt;head /&gt;**"

**• Install the Plugin:**

1. Open the plug-in file: released\plugin\\**plugin.txt**
2. Select and copy all contents;
3. Paste to "**Append in &lt;body /&gt;**"

**• One-click export via VLOOK:**

1. Open the md file conforming to the VLOOK™ specification;
2. Click `File ▸ Export ▸ VLOOK` to export.

![Typora ▸ Preferences ▸ Export](/media/vlook/typora-opt2-light-en.png?srcset=@2x&darksrc=typora-opt2-dark-en.png&darksrcset=@2x)

# Supplement

## Language Package

VLOOK™ UI language is pre-installed with **English** and **Simplified Chinese** by default.

To support more language for the exported HTML, you can choose to append the content of the corresponding language package to the "Meta Tag" section in the export configuration. After doing so, re-export the HTML to include the additional language.

Currently supported languages for expansion include:

`Français`  `Detusch` `Русский` `Español` `Português` `Traditional Chinese` `日本語` `한국어` `العربية`

**• Select language package**

1. The language package file is located in the `released/plugin/lang` (Or directly visit the [**lang**](https://github.com/MadMaxChow/VLOOK/tree/master/released/plugin/lang) folder on GitHub)
2. Open language file and copy all the content. (e.g: `Français.txt` )

**• Update export configuration**

1. Open `Typora > Preferences`, and select the added export configuration `VLOOK`
2. **Append** the copied content to the end of the existing content in the `Append in <head />` (**Note: Do not overwrite the existing content!**)

*If you need to extend support for multiple languages, simply repeat the steps above.*

## Upgrades and Compatibility

**• How to update to latest version ?**

To upgrade the old version of VLOOK™ to the latest version, please first follow **Step 1** above to download the latest release version, and then update the corresponding "==Theme Package==" and "==Export Options==" according to **Steps 2 and 3**.

**• Recommend compatible browser !**

In order to ensure the best user experience, it is strongly recommended to use the following browsers to access:

**[Chrome](https://www.google.cn/chrome/)**　　**[Edge](https://www.microsoft.com/edge)**　　**[Firefox](https://www.mozilla.org/firefox)**

# More documents

For detailed introduction, samples and instructions of VLOOK™ features:

**[Introduction](https://madmaxchow.github.io/VLOOK/index.html)** - [alternative link](https://vlook-doc.pages.dev/index.html)　　

**[Guide](https://madmaxchow.github.io/VLOOK/guide.html)** - [alternative link](https://vlook-doc.pages.dev/guide.html)



