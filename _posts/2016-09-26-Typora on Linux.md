---
layout: post
title: Install Typora on Linux
author: typora.io
category: how-to
tags: [linux, tutorial]
typora-root-url: ../../
---

## Debian/Ubuntu

```bash
# optional, but recommended
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE

# add Typora's repository
sudo add-apt-repository 'deb https://typora.io linux/'
sudo apt-get update

# install typora
sudo apt-get install typora
```

### Update Typora

After install Typora, typora package will be managed by apt-get, so when your system update installed packages, or command `sudo apt-get upgrade` is executed, typora will also be updated to latest version.

## RedHat/Fedora/SUSE

There's no rpm package for Typora yet, so there's two way.

One way is to `yum install apt`, then use `apt-get` like Debian/Ubuntu to install.

Another way is to `alien` to install Typora's deb, but you need to manually upgrade Typora when new version is avaible, therefore, this way is not recommended. To get the `deb` package of Typora:

1. Open <https://www.typora.io/linux/Packages>.
2. Find the value for key `Filename` in the section of correspond  `Archiecture`, it should look like `./linux/typora_0.9.19_amd64.deb`.
3. Prepend the filename with `https://typora.io/` to get the url of latest `deb` package, for example `https://typora.io/./linux/typora_0.9.19_amd64.deb`
4. Download it, then install the `deb` with `alien`.

## Distribution Support

Typora for Linux is tested only on Ubuntu distribution. So, if you met a problem on other distributions, please email us <hi@typora>.

## Screenshots

![screenshot](/media/typora-linux/screenshot.png)