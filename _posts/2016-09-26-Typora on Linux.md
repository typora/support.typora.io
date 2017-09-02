---
layout: post
title: Install Typora on Linux
author: typora.io
category: how-to
tags: [linux, tutorial]
typora-root-url: ../
---

## Debian/Ubuntu

```bash
# optional, but recommended
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE

# add Typora's repository
sudo add-apt-repository 'deb https://typora.io ./linux/'
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

## Other Distribution

- Method one: Download the binary package [Typora-linux-x64.tar.gz](https://typora.io/linux/Typora-linux-x64.tar.gz), [Typora-linux-ia32.tar.gz](https://typora.io/linux/Typora-linux-ia32.tar.gz).
- Method two: Try to install `apt-get` on your distirbution, and then install typora.

## Distribution Support

Typora for Linux is tested only on a Ubuntu distribution. So, if you have a problem with other distributions, please email us at [hi@typora](http://mailto:hi@typora.io).

## Screenshots

![screenshot](/media/typora-linux/screenshot.png)

## Trouble Shooting

#### Start Typora and got `version GLIBCXX_3.4.21 not defined in file libstdc++.so.6`

When  you start typora on Ubuntu 14.x, if following error happens: 

```
/usr/share/typora/Typora: relocation error: /usr/share/typora/resources/app/node_modules/spellchecker/build/Release/spellchecker.node: symbol _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, version GLIBCXX_3.4.21 not defined in file libstdc++.so.6 with link time reference
```

You could download the debian of package libstdc++6 for Xenial at link http://packages.ubuntu.com/xenial/libstdc++6 and installed it using `dpkg -i` (reference: https://askubuntu.com/questions/777803/apt-relocation-error-version-glibcxx-3-4-21-not-defined-in-file-libstdc-so-6).