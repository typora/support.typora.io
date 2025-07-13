---
layout: post
title: 安装与使用 VLOOK
author: typora.io
permalink: "/zh/Install-and-Use-VLOOK/"
typora-root-url: "../../"
typora-copy-images-to: "../../media/vlook"
last_modified_at: 2025-01-10
---

[English Version](/Install-and-Use-VLOOK/)

**VLOOK™ 让你的 Markdown 有了新看 (wán) 法！**



只需要三步，让你快速上车，**开启不一样的 Markdown 体验之旅！**

第1步：[下载与设置](#第1步：下载与设置)

第2步：[安装主题包](#第2步：安装主题包)

第3步：[配置导出选项](#第3步：配置导出选项)



# 第1步：下载与设置

**• 下载插件**

从 VLOOK™ 在托管的平台上下载最新发布版本：

**[GitHub](https://github.com/MadMaxChow/VLOOK/releases)**　　**[Gitee](https://gitee.com/madmaxchow/VLOOK/releases)**

**• 安装 Typora**

1. 下载并安装 [Typora](https://www.typora.io) 的最新版本；
2. 进入配置界面：`Typora ▸ 偏好设置 ▸ Markdown`
3. 启用 `Markdown 扩展语法` 、 `代码块`下的所有选项。详见下图：

![Typora ▸ Preferences ▸ Markdown](/media/vlook/typora-opt1-light.png)



# 第2步：安装主题包

**• 安装主题**

1. 将 `released/theme` 下所有 CSS 文件复制至 Typora 的主题目录；
2. 主题目录在哪？可通过 `偏好设置 ▸ 外观 ▸ 打开主题目录` 定位到该目录。

**• 选用主题**

1. 重启 Typora；
2. 点击 `主题` 菜单，选择以 `Vlook ***` 形式命名的任意主题即可；
3. 建议基于 VLOOK™ 规范的文档模板来创建你自己的 Markdown 文档，这样能更快上手。

**• 从模板开始书写**

建议基于 VLOOK™ 规范的文档模板创建自己的 Markdown 文档，以便更快地入门。

所有文档范例 `.md` 文件位于目录 `released/samples` 中



# 第3步：配置导出选项

**• 配置导出设置**

1. 启动 Typora 并进入 `偏好设置`
2. 点击 `导出`，添加配置（ **选择 HTML 模板** ），并将配置命名为 `VLOOK` 

**• 安装元标签**

1. 打开元标签文件：released\plugin\\**meta.txt**
2. 全选并复制所有内容
3. 将内容粘贴至「**在 &lt;head /&gt; 中添加**」

**• 安装插件**

1. 打开插件文件：released\plugin\\**plugin.txt**
2. 全选并复制所有内容
3. 将内容粘贴至「**在 &lt;body /&gt; 中添加**」

![Typora ▸ Preferences ▸ Export](/media/vlook/typora-opt2-light.png)

---

**• 一键导出为 HTML**

1. 打开符合 VLOOK™ 规范的 md 文件；
2. 点击 `文件 ▸ 导出 ▸ VLOOK` 完成导出。

# 补充说明

## 语言包

VLOOK™ 的界面语言默认内置了「**英文**、**简体中文**」，对导出后的 HTML 需要支持更多语言，可以选择将对应语言包的内容，追加到以上导出配置中「元标签」内容的后面，重新导出 HTML 即可。

目前可扩展支持的语种：

`Français`  `Detusch` `Русский` `Español` `Português` `Traditional Chinese` `日本語` `한국어` `العربية`

**• 选择语言包**

1. 语言包文件位于 `released/plugin/lang` 目录下（或直接访问 GitHub 上的 **[lang](https://github.com/MadMaxChow/VLOOK/tree/master/released/plugin/lang)** 文件夹）
2. 打开一个或多个语言文件，并复制所有内容（如：`Français.txt` ）

**• 更新导出配置**

1. 打开 `Typora > Preferences`，并选择添加的导出配置 `VLOOK` 
2. 将复制的内容**追加**到 `在 <head /> 中添加` 已有内容的后面（**注意：不是覆盖原有内容！**）

*如果需要扩展支持多个语种，重复以上操作步骤即。*

## 升级与兼容性

**• 如何更新插件到最新版本？**

若有新版本，在右下角会出现新版本升级提示图标，重复以上 3 s个步骤进行操作即要完成更新。

**• 推荐选择兼容的浏览器！**

为保障最佳的使用体验，强烈建议使用以下浏览器访问：

**[Chrome](https://www.google.cn/chrome/)**　　**[Edge](https://www.microsoft.com/edge)**　　**[Firefox](https://www.mozilla.org/firefox)**

# 更多文档

有关 VLOOK™ 特性的详细介绍、样例及使用说明详见：

**[简介](https://madmaxchow.github.io/VLOOK/index.html)** - [alternative link](https://vlook-doc.pages.dev/index.html)

**[快速参考手册](https://madmaxchow.github.io/VLOOK/guide.html)** - [alternative link](https://vlook-doc.pages.dev/guide.html)
