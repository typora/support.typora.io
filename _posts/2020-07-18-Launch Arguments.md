---
layout: post
title: Launch Arguments (Windows / Linux)
author: typora.io
category: how-to
tags: [cmd]
typora-root-url: ../
---

> Note: This is wiki is only for Windows / Linux version, requires Typora ≥ 0.9.92

You can launch Typora.exe with extra arguments, for example:

```cmd
"C:\Program Files\Typora/typora.exe" --disable-gpu
```

## Basic

- `--new` : launch Typora with new untitled document, ignores the launch options in preferences panel. (http://support.typora.io/File-Management/#set-default-folder)
- `--reopen-file`: launch Typora and reopen last close files, ignores the launch options in preferences panel. 

## Chrome-based Launch Arguments

- `--disable-gpu`: disable GPU (hardware acceleration) when launch Typora. You can use this if you're on Linux, may meet rendering issues like window black, etc.
- `--client-certificate="path"`: Use certificate file at path.
- `--proxy-server=address:port`: Use a specified proxy server, which overrides the system setting. This switch only affects requests with HTTP protocol, including HTTPS and WebSocket requests. It is also noteworthy that not all proxy servers support HTTPS and WebSocket requests. The proxy URL does not support username and password authentication [per Chromium issue](https://bugs.chromium.org/p/chromium/issues/detail?id=615947).
- `--proxy-pac-url=url` Use pac proxy.
- `--host-rules=rules`: A comma-separated list of `rules` that control how hostnames are mapped.
- `--no-sandbox`: Disables Chromium sandbox.
- ...

You can find more details here → https://www.electronjs.org/docs/api/command-line-switches

---

## Flags in Advanced Configs

You can also config "flags" field in Preferences Panel → Open Advanced Settings to use chrome-based launch arguments. This also supports Typora < 0.9.92.