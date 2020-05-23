---
layout: post
title: Spellcheck
author: typora.io
category: basic
tags: [spellcheck, i18n]
typora-root-url: ../
---

## OS X

There’s no extra setup on macOS, you could enable/disable spellcheck from `Edit` → `Spelling and Grammar` on menu bar (like other apps).

## Windows/Linux

You could open spellcheck panel by click `Edit` → `Spell Check…` from menu, or just hover on status bar and open the “spell check“ icon.

<figure>
  <img src="/media/spellcheck/Screen Shot 2018-10-21 at 23.21.28.png" alt="spellcheck on windows" style="zoom:50%">
  <figcaption>Left: Spellcheck in context menu / Right: Spellcheck Panel</figcaption>
</figure>


You could change the default spell check language or disable spell check by clicking “Global Setting…“ from the spell check panel or find it directly in preferences panel.

## Windows 10

On Windows 10, Typora may use the system built-in spellchecker, you could enable "Highlight misspelled **words**" in Windows Settings → Devices → Typing.

## Install Missing Dictionaries

When you saw the warning icon on your status bar like following, it properly means that extra components are required to download in order to support spell check for target language.

![Screen Shot 2018-10-22 at 00.22.33](/media/spellcheck/Screen Shot 2018-10-22 at 00.22.33.png)

You could click on the “warning“ icon and follow the instructions to download & install missing dictionary files.

### Windows 8/10

Typora use the system spellcheck on Windows ≥ 8 by default, but you could still choose to use the built-in spellcheck module in Typora, instead of install language support for whole system, just click the pulldown button, and select “Install dictionary file only for Typora“.

![CleanShot 2018-10-22 at 21.57.11@2x](/media/spellcheck/CleanShot 2018-10-22 at 21.57.11@2x.png)

#### Install Language Support on Windows 8/10

You could install the language using the regional settings:

![Windows 10 Language and Regions](/media/spellcheck/windows-10-language-settings.jpg)

Once the additional language is added, Typora will need to be restarted.

#### Install Language Support only for Typora

Click “Install dictionary file only for Typora“ from the pulldown button when Typora displays the “dictionary missing“ notification, Typora will automatically download needed files and use “hunspell“ module for spell check. You could learn more in following section.

### Linux and older Windows

Click “Install language Support“ when error notification of spellcheck is shown, Typora will display the license info of the dictionary file, and then after click “download“ button, typora will download the dictionary file. You could see the download progress from the status bar.

You could download needed language manually from <https://dict.typora.io/>, and put them under folder `{typora-user-folder}\dictionaries`, you could find the location of `{typora-user-folder}` by opening “theme folder“ from preferences panels, and then open its parent folder. On Linux it looks like `~/.config/Typora`, and on Windows it looks like `C:/user/{yout-user-name}/appData/Roaming/Typora`.

#### License info

Source and license info of those dictionaries are in <https://github.com/typora/dictionaries>.

## Learn and Unlearn Misspelled Words

You could tell Typora to learn a new word by select the word and click “learn spelling“ from context menu. To unlearned a previous added word, just select the word and select “unlearn spelling“ from context menu.

**Nota Bene**: There’s no spell check for Chinese/Japanese, when those languages are selected, Typora will use `en-US` spellchecker to check ASCII words.