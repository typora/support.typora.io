---
layout: post
title: Spellcheck
author: typora.io
category: basic
tags:
- spellcheck
- i18n
typora-root-url: "../../"
last_modified_at: 2025-01-17
---

## macOS

There’s no extra setup on macOS, you can enable/disable spellcheck from `Edit` → `Spelling and Grammar` on the menu bar (like other apps).

## Windows/Linux

You can open the spellcheck panel by clicking `Edit` → `Spell Check…` from the menu, or just hover over the status bar and open the “spell check“ icon.

<figure>
  <img src="/media/spellcheck/Screen Shot 2018-10-21 at 23.21.28.png" alt="spellcheck on windows" style="zoom:50%">
  <figcaption>Left: Spellcheck in context menu / Right: Spellcheck Panel</figcaption>
</figure>


You can change the default spellcheck language or disable spellcheck by clicking “Global Setting…“ from the spellcheck panel or by finding it directly in the preferences panel.

## Windows 10

On Windows 10, Typora may use the built-in system spellchecker. You can enable "Highlight misspelled **words**" in Windows Settings → Devices → Typing.

## Install Missing Dictionaries

When you see the warning icon on your status bar, as shown below, it probably means that extra components are required to be downloaded in order to support spellcheck for the target language.

![Screen Shot 2018-10-22 at 00.22.33](/media/spellcheck/Screen Shot 2018-10-22 at 00.22.33.png)

You can click on the “warning“ icon and follow the instructions to download & install the missing dictionary files.

### Windows 8/10

Typora uses the system spellcheck on Windows ≥ 8 by default, but you can still choose to use the built-in spellcheck module in Typora. Instead of installing language support for the whole system, just click the pulldown button and select “Install dictionary file only for Typora“.

![CleanShot 2018-10-22 at 21.57.11@2x](/media/spellcheck/CleanShot 2018-10-22 at 21.57.11@2x.png)

#### Install Language Support on Windows 8/10

You can install the language using the regional settings:

![Windows 10 Language and Regions](/media/spellcheck/windows-10-language-settings.jpg)

Once the additional language is added, Typora will need to be restarted.

#### Install Language Support only for Typora

Click “Install dictionary file only for Typora“ from the pulldown button when Typora displays the “dictionary missing“ notification. Typora will automatically download the required files and use the “hunspell“ module for spellcheck. You can learn more in the following section.

### Linux and older Windows

Click “Install language Support“ when the error notification for spellchecking is show. Typora will display the license info of the dictionary file and then, after clicking the “download“ button, Typora will download the dictionary file. You can see the download progress from the status bar.

You can manually download required languages from <https://dict.typora.io/> and put them under the folder `{typora-user-folder}\dictionaries`. You can find the location of `{typora-user-folder}` by opening the “theme folder“ from the  preferences panel and then open its parent folder. On Linux it looks like `~/.config/Typora`, and on Windows it looks like `C:/user/{your-user-name}/appData/Roaming/Typora`.

#### License info

Source and license info of these dictionaries can be found at <https://github.com/typora/dictionaries>.

## Learn and Unlearn Misspelled Words

You can tell Typora to learn a new word by selecting the word and clicking “learn spelling“ from the context menu. To unlearn a previously added word, just select the word and select “unlearn spelling“ from the context menu.

**Note**: There’s no spell check for Chinese/Japanese. When these languages are selected, Typora will use the `en-US` spellchecker to check ASCII words.
