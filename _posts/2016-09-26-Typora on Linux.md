---
layout: post
title: Install Typora on Linux
author: typora.io
category: basic
tags: [linux, tutorial]
typora-root-url: ../
---

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

## Other Distributions

1. Download the binary package [Typora-linux-x64.tar.gz](https://typora.io/linux/Typora-linux-x64.tar.gz), [Typora-linux-ia32.tar.gz](https://typora.io/linux/Typora-linux-ia32.tar.gz).
2. Try to install `apt-get` on your distribution, and then install typora.

## Distribution Support

Typora for Linux is tested only on Ubuntu. So, if you have a problem with other distributions, please email us at [hi@typora](http://mailto:hi@typora.io).

## Screenshots

![screenshot](/media/typora-linux/screenshot.png)

## Trouble Shooting

### Common Solutions for Typora not Open

**Make sure all the necessary dependencies are installed**. You can run `ldd typora | grep not` on a Linux machine to check which dependencies are missing. 

#### Error on Debian Stretch

For following error:

```
[8898:0620/213856.172363:FATAL:setuid_sandbox_host.cc(157)] The SUID sandbox helper binary was found, but is not configured correctly. Rather than run without sandboxing I'm aborting now. You need to make sure that /usr/share/typora/chrome-sandbox is owned by root and has mode 4755.
```

You could try `chmod 4755 /usr/share/typora/chrome-sandbox`

See discussion in https://github.com/electron/electron/issues/17972

#### Cannot open Typora binary "there is no application installed for shared library"

When double click on Typora's binary file, Nautilus (file manager) cannot detect it as executable file. 

This is caused by a Nautilus's bug, see discussions in https://github.com/electron/electron/issues/15406. You could either: install Typora via `deb` or `apt-get`, or run Typora from terminal (`./Typora`).

#### Started Typora and got `version GLIBCXX_3.4.21 not defined in file libstdc++.so.6`

When  you start typora on Ubuntu 14.x, if following error happens: 

```
/usr/share/typora/Typora: relocation error: /usr/share/typora/resources/app/node_modules/spellchecker/build/Release/spellchecker.node: symbol _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, version GLIBCXX_3.4.21 not defined in file libstdc++.so.6 with link time reference
```

You could download the Debian of package libstdc++6 for Xenial at link http://packages.ubuntu.com/xenial/libstdc++6 and installed it using `dpkg -i` (reference: https://askubuntu.com/questions/777803/apt-relocation-error-version-glibcxx-3-4-21-not-defined-in-file-libstdc-so-6).

#### [Ubuntu 14.04 ] typora: /lib/x86_64-linux-gnu/libdbus-1.so.3: no version information available (required by typora)

See [electron/electron#16364 (comment)](https://github.com/electron/electron/issues/16364#issuecomment-492199424)

#### Error while loading shared libraries: libgconf-2.so.4

Try install `libgconf-2-4` first.

#### NSS out-of-date

If you recieve following error when launch Typora:

```
[7465:7499:0911/174740.042852:FATAL:nss_util.cc(632)] NSS_VersionCheck("3.26") failed. NSS >= 3.26 is required. Please upgrade to the latest NSS, and if you still get this error, contact your distribution maintainer.
Aborted
```

You could:
1. Ensure `xenial-security`updates are included in *Software & Updates*.
2. run `sudo apt-get update && sudo apt-get install libnss3`

#### Malformed input, repository not added.

You could add repository by:

```sh
echo -e "\ndeb https://typora.io/linux ./" | sudo tee -a /etc/apt/sources.list
```

see discussion related in <https://github.com/typora/typora-issues/issues/2065#issuecomment-455877843>. 

