---
layout: post
title: Use MacType on Windows
author: typora.io
category: how-to
tags: [font, windows]
typora-root-url: ../
---

Well, firstly, you need to install [MacType][] on Windows, after that, you may found MacType not work as expect for Typora. This is because Typora use [DirectWrite][] for font rendering.

Although, [MacType][] claims to be compatible with [DirectWrite][], other user may prefer to disable DirectWrite feature and let MacType to take over all font rendering optimization. So this article will show you how to disable DirectWrite:

1. Open preference panel.
2. Click `Open Advanced Settings` which will open a folder.
3. Open `config.user.json` from the folder.
4. Set `"directWrite": false` in the json file. By default the value should be `true`.

```json
"directWrite": false, // Boolean - Enables DirectWrite font rendering system on Windows. Default is true.
```





[DirectWrite]: https://msdn.microsoft.com/zh-cn/library/windows/desktop/dd368038(v=vs.85).aspx
[MacType]: https://github.com/snowie2000/mactype