---
layout: post
title: Copy and Paste
author: typora.io
category: how-to
tags: [copy, clipboard]
typora-root-url: ../
typora-copy-images-to: ../media/clipboard
---

## How Clipboard Works

Let’s start by discussing [clipboard formats](http://msdn.microsoft.com/en-us/library/windows/desktop/ms649013(v=vs.85).aspx). A clipboard format is used to describe what type of data is placed on the clipboard. 

When you copy content in Typora, in most case, Typora will convert selected content into different formats including HTML, Rich Format (RTF), Plain Text, and store them in clipboard simultaneously. Then, when you paste into different app, proper format will be selected based on logic of target app. For example, if you paste into Gmail, content in HTML format will be pasted, while if you paste into source code editor, like Sublime, content in Plain Text format will be pasted. Therefore, unlike most other Markdown editors, Typora does not provide menu actions like "Copy in HTML format" or "Copy as RTF" explicitly, when you copy in Typora, those formats are **already** copied.

Usually, you could press <kbd>Command/Ctrl+Shift+V</kbd> to paste content as plain text (or "match style") into other apps.

Similarly, when you paste content into Typora, firstly, Typora choose HTML format in clipboard and convert it into Markdown. If HTML content is not found, typora will paste content as plain text or Markdown source. In source code mode, plain text format is always chosen.

## Paste as Plain Text

"Paste as Plain Text" have the same meaning with "Paste as Markdown Source" in Typora. You could use shortcut key <kbd>Command/Ctrl+Shift+V</kbd> for this.

## Copy as Markdown

If you copy content which looks like "A **boy**" and paste into plain text editor, like Notepad.exe or VSCode,

"A boy" will be pasted by default, while "A \*\*boy\*\*" will be pasted when "Copy as Markdown" is selected. The shortcut key for this is <kbd>Command/Ctrl+Shift+C</kbd>.

### Default Copy Behavior

**If you work close with both rich editors, like mail clients or Word, and code editors or IDEs, you may hope to --- Copy  content in Typora, then:**

- **Pasted rich content when paste into rich editors**
- **Paste Markdown source code when paste into code editors**

This is something hard to achieve in other markdown editors, but totally possible in Typora.

To achieve this, please open "Editor" tab/section of preferences panel, and then enable "Copy Markdown source as plain text" for "Default Copy Behavior".

<div  style="text-align:center">
  <figure style="">
    <img src="/media/clipboard/Screen Shot 2019-01-24 at 22.48.12.png" alt="Copy Content in Typora" style="zoom:50%;" />	
    <figcaption><center><i>Copy Content in Typora</i></center></figcaption>
  </figure>
</div>

<div  style="text-align:center">
  <figure style="">
    <img src="/media/clipboard/Screen Shot 2019-01-24 at 22.55.13.png" alt="Paste into Gmail (wcontent with rich style will be pasted)" style="zoom:50%;" />	
    <figcaption><center><i>Paste into Gmail (content with rich style will be pasted)</i></center></figcaption>
  </figure>
</div>

<div  style="text-align:center">
  <figure style="">
    <img src="/media/clipboard/image-20190124225734855.png" alt="Paste into VSCode" style="zoom:50%;" />	
    <figcaption><center><i>Paste into VSCode (Markdown source code will be pasted)</i></center></figcaption>
  </figure>
</div>

## Copy without Theme Styling

By default, copy content from other rich editor will include styles including font, line height, color, etc. Something you may just want to copy content with basic format or "semantic text". 

For example, you may want to copy `<strong>text</strong>`, instead of "text" with specific font family, font size, color... styles defined in each theme, in this case, "Copy without Theme Styling" is preferred.

<div  style="text-align:center">
  <figure style="">
    <img src="/media/clipboard/Screen Shot 2019-01-24 at 23.07.32.png" alt="Copy without theme styling and paste into Pages" style="zoom:50%;" />	
    <figcaption><center><i>Copy without theme styling and paste into Pages</i></center></figcaption>
  </figure>
</div>

For better styling moving content between Typora and other Apps, please use "export" feature instead of copy & paste.

## Copy as HTML Code

When is action is selected, Typora will convert selected part into HTML, and put HMTL source code into "Plain Text" format of the clipboard. For developers, you may have chances to edit HTML file in source code editor, this menu action helps you to copy content from Typora into HTML source code.

<div  style="text-align:center">
  <figure style="">
    <img src="/media/clipboard/Screen Shot 2019-01-24 at 23.11.28.png" alt="Copy as HTML Code and paste into VSCode" style="zoom:50%;" />	
    <figcaption><center><i>Copy as HTML Code and paste into VSCode</i></center></figcaption>
  </figure>
</div>