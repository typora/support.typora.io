---
layout: post
title: Use MacType on Windows
author: typora.io
category: how-to
tags: [font, windows]
typora-root-url: ../
---

If you are using [Typora for Windows](http://www.softpedia.com/get/Internet/WEB-Design/HTML-Editors/Typora.shtml), you may have installed [MacType][] on your Windows computer and found that MacType does not work as expected. This is because Typora uses [DirectWrite][] for font rendering.

Although [MacType][] claims to be compatible with [DirectWrite][], some users prefer to disable DirectWrite and let MacType to take over all font rendering optimization. 

This is how to disable DirectWrite in Windows:

1. Open the **Preferences panel**.
2. Click `Open Advanced Settings`, which will open a directory.
3. Open `config.user.json` in that directory.
4. Set `"directWrite": false` in the json file. The default value is usually `true`. If so, change it:

```json
"directWrite": false, // Boolean - Enables DirectWrite font rendering system on Windows. Default is true.
```

[DirectWrite]: https://msdn.microsoft.com/zh-cn/library/windows/desktop/dd368038(v=vs.85).aspx
[MacType]: https://github.com/snowie2000/mactype