---
permalink: /zh/Add-Custom-CSS/
layout: post
title: [添加自定义 CSS 样式]
author: [loveAvocado]

---



# 添加自定义 CSS 样式

[English Original Version](https://support.typora.io/Add-Custom-CSS/)  [Help Improve the Translation](https://github.com/typora/wiki-website)

> 提示：这一特性在 Windows 环境下仅适用于 0.9.12 及更新的版本，在 macOS 环境下则仅适用于 0.9.9.5.1 及更新的版本。

## 打开主题文件夹

要在访达或文件浏览器中打开 Typora 主题文件夹，只需要打开偏好设置面板中的“外观”选项卡，并点击窗口底部的“打开主题文件夹”按钮即可。

您可以在此处添加您的自定义主题。如果您想要寻找、安装或编写主题，请参阅[关于主题页面](https://support.typora.io/About-Themes)。

但您也许只是想要修改 CSS ，比如改变字体或增加书写区域，并将其应用至所有主题或最近使用的主题，而非重新写一个全新的主题文档。下一节将向您讲解如何实现它。

## 向所有主题或其他主题增补自定义CSS 样式

Typora 将以以下序列加载 CSS 文档：

1. Typora 的基本样式
2. 最近使用的主题使用的 CSS
3. 主题文档目录下的 `base.user.css`
4. 主题文档目录下的 `{current-theme}.user.css`

如果主题文档目录中没有 `base.user.css`和`{current-theme}.user.css `这两个文档，则您可以新建之。

如果您想要改变 CSS 样式，并将其应用至**所有主题**，则你应该修改 `base.user.css` 文档并增补你自己的 CSS ，这样的话，无论选择哪个主题，您的 CSS 样式都会被加载并应用。

如果您想要为**某个特定的主题**修改 CSS 样式，比如就主题 “Newsprint” 而言，你可以创建文档 `newsprint.user.css` 并增补您想添加的 CSS 。出于以下理由，我们不建议您直接修改对应的主题文件：

1. 适用于 Typora 的默认主题在被安装后可能会被更新。而在更新过程中，原有文件将被简单替换为新文件，因此您的修改将遗失。
2. 由他人编写的主题同样面临被修改的可能性，如果他们修改了他们的CSS文档，您只需要用您的旧文档替换他们修改过后的新文档，就不必担心您的修改会遗失了。

（如果您自己编写自己的 CSS 主题，那么直接修改对应主题文件则毫无问题。）

> 备注：文件名大小写敏感。 `{current-theme}.user.css` 中的 `{current-theme}` 必须与正在使用主题的文件名部分完全相同。例如， “Github” 主题的 CSS 文档是 `github.css` ，因此文件名部分应该是 “github” 而不是 “GitHub” 。



## 调试 CSS

您可以使用 Chrome 或 Safara 的 DevTool 调试元素样式。

- 在 macOS 环境下，您可以打开 `帮助` -> `Enable Debug` 菜单选项，然后右键单击混合编辑视图下 Typora 页面任何位置，选择弹出窗口中的“检查元素”选项即可。
- 在 Windows 或 Linux 环境下，您可以从`视图` -> `切换` ->` 开发工具` 菜单选项打开开发工具即可。
