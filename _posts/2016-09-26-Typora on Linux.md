---
layout: post
title: Install Typora on Linux
author: typora.io
category: basic
tags: [linux, tutorial]
typora-root-url: ../
---

Installation instructions for different flavours of Linux.

## Debian/Ubuntu

```bash
# or use
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -

# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update

# install typora
sudo apt-get install typora
```

### Alternative for `apt-key`

When you try to add an APT repository key using `apt-key` (first line in previous command line) on Debian, Ubuntu and Linux distributions based on these, you'll see the following message: "*Warning: apt-key is deprecated. Manage keyring files in trusted.gpg.d instead (see apt-key(8))*".

The easiest way would be just to ignore it.

But if you’re not OK with the warning, you can do followings:

1. Download the key and save it locally somewhere.

   ```shell
   curl https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > /usr/share/keyrings/typora.gpg
   ```

2. Create repo file `typora.list` in `/etc/apt/sources.list.d`.

   ```shell
   sudo vim /etc/apt/sources.list.d/typora.list
   ```

3. Paste repo definition into this file:

   ```shell
   deb [arch=amd64 signed-by=/usr/share/keyrings/typora.gpg] htps://typora.io/linux ./
   ```

4. Now you can install Typora:

   ```shell
   sudo apt-get update
   sudo apt-get install typora
   ```

### Upgrade Typora

After installing Typora, the `typora` package will be managed by `apt-get`, so when your system updates installed packages, or you execute `apt-get upgrade`, Typora will be updated to latest version.

```bash
# upgrade all packages include Typora
sudo apt-get upgrade
```

## NixOS

```bash
# install typora to the curent user's profile
nix-env -i typora
```

## Mint

```sh
# or use
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -

# add Typora's repository
echo -e "\ndeb https://typora.io/linux ./" | sudo tee -a /etc/apt/sources.list
sudo apt-get update

# install typora
sudo apt-get install typora
```

## Download deb file manually

You can also manually download and install the deb package file, following those steps:

1. The `deb` file is located at `https://typora.io/linux/typora_${version}_amd64.deb`, for example: `https://typora.io/linux/typora_0.9.96_amd64.deb`. Just downlad the deb installer at that url.
2. Double click the deb file to start intsall on Ubuntu / Debian.

## Other Distributions

1. Download the binary package [Typora-linux-x64.tar.gz](https://typora.io/linux/Typora-linux-x64.tar.gz), [Typora-linux-ia32.tar.gz](https://typora.io/linux/Typora-linux-ia32.tar.gz).
2. Try to install `apt-get` on your distribution, and then install typora.

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

For following error:

```
[8898:0620/213856.172363:FATAL:setuid_sandbox_host.cc(157)] The SUID sandbox helper binary was found, but is not configured correctly. Rather than run without sandboxing I'm aborting now. You need to make sure that /usr/share/typora/chrome-sandbox is owned by root and has mode 4755.
```

Try `chmod 4755 /usr/share/typora/chrome-sandbox`

See discussion in https://github.com/electron/electron/issues/17972

#### Cannot open Typora binary "there is no application installed for shared library"

When double clicking on Typora's binary file, Nautilus (file manager) doesn't run it, as I can't detect it as an executable file.

This is caused by a Nautilus's bug, see discussions in https://github.com/electron/electron/issues/15406. You can either: install Typora via `deb` or `apt-get`, or run Typora from terminal (`./Typora`).

#### Started Typora and got `version GLIBCXX_3.4.21 not defined in file libstdc++.so.6` error

When  you start Typora on Ubuntu 14.x, if following error happens: 

```
/usr/share/typora/Typora: relocation error: /usr/share/typora/resources/app/node_modules/spellchecker/build/Release/spellchecker.node: symbol _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, version GLIBCXX_3.4.21 not defined in file libstdc++.so.6 with link time reference
```

then download the Debian of package libstdc++6 for Xenial at link http://packages.ubuntu.com/xenial/libstdc++6 and installed it using `dpkg -i` (reference: https://askubuntu.com/questions/777803/apt-relocation-error-version-glibcxx-3-4-21-not-defined-in-file-libstdc-so-6).

#### [Ubuntu 14.04 ] typora: /lib/x86_64-linux-gnu/libdbus-1.so.3: no version information available (required by typora)

See [electron/electron#16364 (comment)](https://github.com/electron/electron/issues/16364#issuecomment-492199424)

#### Error while loading shared libraries: libgconf-2.so.4

Try install `libgconf-2-4` first.

#### NSS out-of-date

If you recieve following error when launching Typora:

```
[7465:7499:0911/174740.042852:FATAL:nss_util.cc(632)] NSS_VersionCheck("3.26") failed. NSS >= 3.26 is required. Please upgrade to the latest NSS, and if you still get this error, contact your distribution maintainer.
Aborted
```

then:
1. Ensure `xenial-security` updates are included in *Software & Updates*.
2. run `sudo apt-get update && sudo apt-get install libnss3`

#### Malformed input, repository not added

You can add a repository by:

```sh
echo -e "\ndeb https://typora.io/linux ./" | sudo tee -a /etc/apt/sources.list
```

see related discussion in <https://github.com/typora/typora-issues/issues/2065#issuecomment-455877843>. 
#### Shortcut for Heading 5 is not working

Please check if you uses fcitx (e.g. for typing Chinese)? `Ctrl + 5` is the global shortcut key for fcitx to reload its config. Deleting that global shortcut should make ctrl+5 work in Typora. (Thanks to https://github.com/typora/typora-issues/issues/867#issuecomment-647082881).

