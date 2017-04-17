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

## RedHat/Fedora/SUSE

There's no `rpm` package for Typora yet, so there's two way.

One way is to `yum install apt`, then use `apt-get` as with Debian/Ubuntu to install and upgrade.

Another way is to use `alien` to install the Typora `.deb`, but you need to manually upgrade Typora when a new version is available. This way is not recommended. To get the `.deb` package of Typora:

1. Open <https://www.typora.io/linux/Packages>.
2. Find the value for key `Filename` in the section of correspond  `Archiecture`, it should look something like `./linux/typora_0.9.19_amd64.deb`.
3. Prepend the filename with `https://typora.io/` to get the url of the latest `deb` package, for example `https://typora.io/./linux/typora_0.9.19_amd64.deb`
4. Download it, then install the `.deb` with `alien`.

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