---
layout: post
title: Open in Typora — VS Code Extension
category: how-to
author: typora.io
tags:
- vscode
- cursor
- ide
typora-root-url: ../../
---

If you use both **Visual Studio Code** / **Cursor** and **Typora**, you can now switch between them seamlessly with the [**Open in Typora**](https://marketplace.visualstudio.com/items?itemName=typora.typora-open-in-typora) extension for VS Code.

This extension adds an **"Open in Typora"** action to the right-click context menu in VS Code, allowing you to quickly open any Markdown file in Typora with a single click.

## Install

1. Open **Visual Studio Code** or **cursor**.
2. Go to the **Extensions** view (`Ctrl+Shift+X` / `Cmd+Shift+X`).
3. Search for **"Open in Typora"**.
4. Click **Install**.

Or install it directly from the [VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=typora.typora-open-in-typora).

## Usage

1. In VS Code, right-click on a Markdown file in the **Explorer** sidebar or in the **editor tab**.
2. Select **"Open in Typora"** from the context menu.
3. The file will open in Typora.

## Supported File Extensions

The following file extensions are supported by default:

`.md`, `.markdown`, `.mdown`, `.mmd`, `.text`, `.txt`, `.rmarkdown`, `.mkd`, `.mdwn`, `.mdtxt`, `.rmd`, `.qmd`, `.mdtext`, `.mdx`

### Customize Supported Extensions

You can customize which file types are available for the "Open in Typora" action by modifying the `typora.supportedExtensions` setting in VS Code:

1. Open **Settings** (`Ctrl+,` / `Cmd+,`).
2. Search for `typora.supportedExtensions`.
3. Edit the list of extensions (without the dot prefix), for example:

```json
"typora.supportedExtensions": ["md", "markdown", "txt", "qmd"]
```

## Requirements

- **Typora** must be installed on your system.
- **VS Code** 1.85.0 or higher.
- On **Windows** and **Linux**, `typora` should be available in your system `PATH`.

## Source Code

The extension is open source. Visit the [GitHub repository](https://github.com/typora/vscode-open-in-typora) for source code and issue reporting.
