---
layout: post
title: Install Typora on Linux
author: typora.io
category: basic
tags: [linux, tutorial]
typora-root-url: ../../
---

Installation instructions for different flavours of Linux.

> If you are a user in China, replace all `https://typora.io/` with `https://typoraio.cn/`.  
> 如果你是中国的用户，请将所有 `https://typora.io/` 替换为 `https://typoraio.cn/`。

## Debian/Ubuntu

```shell
# download the key
curl https://typora.io/linux/public-key.asc | sudo gpg --dearmor -o /usr/share/keyrings/typora.gpg

# add Typora's repository
echo "deb [signed-by=/usr/share/keyrings/typora.gpg] https://typora.io/linux ./" | sudo tee /etc/apt/sources.list.d/typora.list
sudo apt update

# install typora
sudo apt install typora
```

### Upgrade Typora

After installing Typora, the `typora` package will be managed by `apt`, so when your system updates installed packages, or you execute `apt upgrade`, Typora will be updated to the latest version.

```bash
# upgrade all packages include Typora
sudo apt upgrade
```

## Download deb file manually

You can also manually download and install the deb package file by following these steps:

1. Find the download link from <https://typora.io/releases/all> and download the Linux version.
2. Double click the deb file to start installing on Ubuntu / Debian.

## ChromeOS / Chrome Book

Firstly, you will need to enable Linux on Chromebook by following the “Turn on Linux” part here https://support.google.com/chromebook/answer/9145439?hl=en

Then, input commands from https://typora.io/#linux into the newly opened terminal window.

## Other Distributions

Download the binary package [Typora-linux-x64.tar.gz](https://typora.io/linux/Typora-linux-x64.tar.gz).

## Snap Version

You can also install Typora via `snap install typora`.

Please notice the [limitations of the snap version](/Snap/#limitations-for-the-snap-version).

## Wayland

For wayland, please append flags when launching Typora (see <https://blogs.igalia.com/msisov/2020/11/20/chrome-chromium-on-wayland-the-waylandification-project/>).

```
--enable-features=UseOzonePlatform --ozone-platform=wayland
```

## Distribution Support

Typora for Linux is tested only on Ubuntu. So, if you have a problem with other distributions, please email us at [hi@typora](http://mailto:hi@typora.io).

## Screenshots

![screenshot](/media/typora-linux/screenshot.png)

## Troubleshooting

### Common Solutions for Typora not opening

**Make sure all the necessary dependencies are installed**. You can run `ldd typora | grep not` on a Linux machine to check which dependencies are missing. 

#### Error on Debian Stretch

For the following error:

```
[8898:0620/213856.172363:FATAL:setuid_sandbox_host.cc(157)] The SUID sandbox helper binary was found, but is not configured correctly. Rather than run without sandboxing I'm aborting now. You need to make sure that /usr/share/typora/chrome-sandbox is owned by root and has mode 4755.
```

Try `chmod 4755 /usr/share/typora/chrome-sandbox`

See discussion in https://github.com/electron/electron/issues/17972

#### Cannot open Typora binary "there is no application installed for shared library"

When double clicking on Typora's binary file, Nautilus (file manager) doesn't run it as it can't detect it as an executable file.

This is caused by a Nautilus bug, see discussions in https://github.com/electron/electron/issues/15406. You can either: install Typora via `deb` or `apt-get`, or run Typora from the terminal (`./Typora`).

#### Started Typora and got `version GLIBCXX_3.4.21 not defined in file libstdc++.so.6` error

When  you start Typora on Ubuntu 14.x, if the following error happens: 

```
/usr/share/typora/Typora: relocation error: /usr/share/typora/resources/app/node_modules/spellchecker/build/Release/spellchecker.node: symbol _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, version GLIBCXX_3.4.21 not defined in file libstdc++.so.6 with link time reference
```

Then download the Debian version of package libstdc++6 for Xenial at the following link http://packages.ubuntu.com/xenial/libstdc++6 and install it using `dpkg -I` (Reference: https://askubuntu.com/questions/777803/apt-relocation-error-version-glibcxx-3-4-21-not-defined-in-file-libstdc-so-6).

#### [Ubuntu 14.04 ] typora: /lib/x86_64-linux-gnu/libdbus-1.so.3: no version information available (required by Typora)

See [electron/electron#16364 (comment)](https://github.com/electron/electron/issues/16364#issuecomment-492199424)

#### Error while loading shared libraries: libgconf-2.so.4

Try installing `libgconf-2-4` first.

#### NSS out-of-date

If you receive the following error when launching Typora:

```
[7465:7499:0911/174740.042852:FATAL:nss_util.cc(632)] NSS_VersionCheck("3.26") failed. NSS >= 3.26 is required. Please upgrade to the latest NSS, and if you still get this error, contact your distribution maintainer.
Aborted
```

then:
1. Ensure `xenial-security` updates are included in *Software & Updates*.
2. run `sudo apt-get update && sudo apt-get install libnss3`

#### Shortcut for Heading 5 is not working

Please check if you use fcitx (e.g. for typing Chinese)? <kbd>Ctrl</kbd> + <kbd>5</kbd> is the global shortcut key for fcitx to reload its config. Deleting that global shortcut should make <kbd>Ctrl</kbd> + <kbd>5</kbd> work in Typora. (Thanks to https://github.com/typora/typora-issues/issues/867#issuecomment-647082881).

#### libva error: vaGetDriverNameByIndex() failed with unknown libva error, driver_name = (null)

Try launching Typora with the extra argument `--disable-gpu`.

#### Text not displayed in dialogs

![text not displayed in open file dialog](https://user-images.githubusercontent.com/26056183/89756594-a3094c80-db00-11ea-943c-f214fea0c5ef.png)

Please refer to <https://github.com/electron-userland/electron-builder/issues/5217#issuecomment-700707564>

#### Save-as or Save file dialog cannot be displayed

When you save or save-as a file, the dialog does not pop up and in terminal you get: 

```
(typora:114856): Gtk-WARNING **: 15:47:01.744: Can't open portal file chooser: GDBus.Error:org.freedesktop.portal.Error.InvalidArgument: invalid filter: no filters
```

Then, you can try running Typora with `GTK_USE_PORTAL=0 typora`
