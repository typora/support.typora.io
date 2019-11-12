---
layout: post
title: Trouble Shooting
author: typora.io
category: basic
tags: [FAQ, tutorial]
typora-root-url: ../
---

# Common

#### Inline math (Latex code), mermaid, etc are not working

Please enable related features in preferences panel.

 #### How to downgrade

You cuold find History builds here:

- macOS: https://typora.io/dev_release.html
- Linux / Windows: https://typora.io/windows/dev_release.html

#### Recovered old / unsaved data

Please check http://support.typora.io/Version-Control/

# macOS

#### Cannot open / input on macOS 10.15

Please refer [#2923](https://github.com/typora/typora-issues/issues/2923), cleaning existing config / cache of Typora using 3rd app such as AppCleaner, and then restart Typora will get everything working again.

#### Cannot save / close / quit / export on macOS 10.15

Please refer [#2895](https://github.com/typora/typora-issues/issues/2895), cleaning existing config / cache of Typora using 3rd app such as AppCleaner, and then restart Typora will get everything working again.

## Windows

#### Typora window is blank / black

This may caused by compatibility issue between Electron / Chromium and certain GPU driver, please try

- Upgrade your GPU drive to latest

- Or, disable GPU rendering following [#2051](https://github.com/typora/typora-issues/issues/2051), in short

  Adding option `"flags": [["disable-gpu"]]` in
  `c:\Users\\AppData\Roaming\Typora\conf\conf.user.json` helped. Thanks a lot!

## Linux

Please check http://support.typora.io/Typora-on-Linux/