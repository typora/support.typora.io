# **Typora 1.1**

*2022.2.16更新，作者typora.io*

# **更新/改进**

### **文件链接**

此次更新，Typora现支持对本地目录、文件的链接，如\[text](./filename.md)

●   如果链接指向的文件或文件夹（如filename.md）不存在，您只需单击即可创建该文件或文件夹。
 ![Screen Shot 2022-02-04 at 21.25.12](https://support.typora.io/media/new-1.1/Screen%20Shot%202022-02-04%20at%2021.25.12.png)

●   如果在目标文件路径后添加锚点（如filename.md#header-1），则可以通过该链接打开文件后并直接跳转到锚点所在位置。关于如何获得锚，你可以查看关于[内部链接](https://support.typora.io/Links/#internal-links)的说明，了解锚点相关信息。

### **数学**

●   我们添加了一个启用或禁用[物理包](https://www.ctan.org/pkg/physics)的选项。在之前的版本中，\div, \Re这样的宏命令在使用后默认会被物理包重新定义。如下所示：

| **physics** **package enabled**                              | **physics** **package disabled**                             |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![Screen Shot 2022-02-04 at 22.00.03](https://support.typora.io/media/new-1.1/Screen%20Shot%202022-02-04%20at%2022.00.03.png) | ![Screen Shot 2022-02-04 at 22.00.21](https://support.typora.io/media/new-1.1/Screen%20Shot%202022-02-04%20at%2022.00.21.png) |

●   修复了在某些情况下打开文件时数学编号会出错的问题。

●   修复数学块的“复制为MathML”功能无法正常使用的问题。一个小技巧：您可以在Typora的数学块中选择copy as MathML，然后在word中选择“粘贴为纯文本”来粘贴数学内容。
 ![Screen Shot 2022-02-04 at 21.35.47](https://support.typora.io/media/new-1.1/Screen%20Shot%202022-02-04%20at%2021.35.47.png)

### **编辑**

●   当未选择文本时，“复制”将不执行任何操作（如果是旧版本，会将空字符串写入剪贴板）。

●   当未选择文本时，我们还添加了复制／ 剪切光标所在整行的选项，大多数代码编辑器或集成开发环境（如VS Code）也采用类似的做法。
 ![Screen Shot 2022-02-04 at 22.06.00](https://support.typora.io/media/new-1.1/Screen%20Shot%202022-02-04%20at%2022.06.00.png)

●   在macos上，您现在也可以使用Command-Option-Shift-V粘贴为Markdown源（与Command-Shift-V的行为相同），就像其他编辑器的*粘贴和匹配样式*行为一样。

●   为“选择范围”和“删除范围”操作指定了默认快捷方式。

●   改进删除块／ 段落和删除行／ 句子的功能，请参见我们的[规范](https://support.typora.io/Delete-Range/)。
 ![CleanShot 2022-02-13 at 17.31.27](https://support.typora.io/media/delete-range/CleanShot%202022-02-13%20at%2017.31.27.gif)

### **用户界面／ 国际化**

●   修复一些错别字。

●   更新多种语言的翻译，包括韩语、加泰罗尼亚语、土耳其语、波兰语、匈牙利语、日语、印尼语、荷兰语等。

●   支持马来语（感谢[mlukman](https://github.com/MLukman)）。

●   增加斯洛文尼亚语支持（感谢[sponka9](https://github.com/sponka9)）。

●   更新部分界面图标，并使用更紧凑的Windows/Linux菜单。

### **安全**

●   我们已对我们在Windows上的可执行程序和安装程序进行签名。

●   修复XSS安全问题。

### **图片**

●   Typora现在下载和保存web图像到本地时会添加适当的文件扩展名。

●   支持了在本地图像路径之后附加标签，例如：!\[img](image.png#center)。Typora支持加载图片时忽略标签。小提示：图像url上的标签可以方便地提供css样式挂钩（CSS styling styling hook)，例如：

 ```
 img[href&='#center`]  { 
 
 margin: auto 
 
 }
 ```

●   修复[Typora根url](https://support.typora.io/Images/#relative-path-to-certain-folder)未应用于某些图像路径的错误。

### **图像导出**

●   修复自定义字体大小不适用于图像导出的问题。

●   支持在导出为图像时选择使用默认字体大小或主题的字体大小。

●   修复Typora软件缩放运行时的图像损坏。

### **命令行**

●   在macos上，如果在.bash_profile或其他配置文件中加上

```
alias typora="/Applications/Typora.app/Contents/MacOS/Typora"
```

且当目标文件（在传递的参数中）不存在时，Typora将弹出对话框，允许您创建文件或文件夹。

●   在Windows / Linux上，如果打开Typora测试文件(test.md)，且测试文件(test.md)不存在，则Typora不会报错。文件将在保存时创建，无需额外确认，就像其他编辑器一样。

### **许可证／ 激活**

●   现在，您可以通过[此网站](https://store.typora.io/my)管理激活的许可证并停用设备：你可以在[这里](https://support.typora.io/My-License/)查看相关信息。
 ![Screen Shot 2022-02-02 at 10.58.27](https://support.typora.io/media/activation/Screen%20Shot%202022-02-02%20at%2010.58.27.png)

●   现在支持离线激活。你可以在[这里](https://support.typora.io/Offline-Activation/)查看相关信息。
 ![Screen Shot 2022-02-02 at 20.43.53](https://support.typora.io/media/activation/Screen%20Shot%202022-02-02%20at%2020.43.53.png)

### **其他**

●   从支持的导入文件格式添加rtf（需要较新的pandoc版本）。

●   改进逻辑，自动检测pandoc路径。

●   更新时重新打开关闭的文件。

# **修复**

●   修复打开某些链接可能意外关闭Typora。

●   修复较小客户字体大小下的文件树ui。

●   修复保存带有BOM头的文件时添加多个BOM头的问题。

●   修复macos下无法关闭“保持置顶”的问题。

●   修复了当Typora与当前屏幕相同高度时切换标签时的UI问题。

●   修复打印取消时始终显示“进行中”的问题

# **还有一件事**

Github现在支持[插入Mermaid图](https://github.blog/2022-02-14-include-diagrams-markdown-files-mermaid/)到您的Markdown文件中，Typora也支持了这一点。您可以在“偏好设置”→ “Markdown”中打开它，有关更多详细信息，请参见[用Markdown绘制图表](https://support.typora.io/Draw-Diagrams-With-Markdown/)。