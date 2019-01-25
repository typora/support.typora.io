---
layout: post
title: Translations and Languages Support
author: typora.io
category: reference
tags: [i18n]
typora-root-url: ../
date: 2018-02-10
---

## Supported Languages

+ Simplified Chinese by [abnerlee](https://github.com/abnerlee), [NoDotCat](https://github.com/NoDotCat), [HowardTangHw](https://github.com/HowardTangHw),  [Emphasia](https://github.com/Emphasia)
+ Traditional Chinese by [cyberrob](https://github.com/cyberrob)
+ Polish by  [iriusturar](https://github.com/iriusturar)
+ Korean by  [ryush00](https://github.com/ryush00),  [marigold9124](https://github.com/marigold9124)
+ Italian by  [starise](https://github.com/starise), [jethro17](https://github.com/jethro17) 
+ Spanish by  [thepiratejester](https://github.com/thepiratejester)
+ French by [MOrdinateur](https://github.comMOrdinateur)
+ Russian by [dragomano](https://github.com/dragomano)
+ Japanese by [tomochan001](https://github.com/tomochan001) 
+ Portuguese (Brazil) by [akz92](https://github.com/akz92) 
+ German by [rcvd](https://github.com/rcvd), Gert
+ Czech by [byDave251](https://github.com/byDave251), [psimacek](https://github.com/byDave251)
+ Greek by [kiriakosv](https://github.com/kiriakosv)
+ Croatian by [diomed](https://github.com/diomed)
+ Swedish by [FelixZY](https://github.com/FelixZY)
+ Hungarian by [mocsa](https://github.com/mocsa)
+ Portuguese (Portugal) by [camilo93](https://github.com/jcamilo93)
+ Galician by [nunhes](https://github.com/nunhes)

The list above may be obsolete, you could check all available languages or change the locale of Typora in preference panel.

## How to Contribute

Please see <https://github.com/typora/Typora-i18n>.

---

If you want to help translate Typora into other languages, we would very appreciate that.

### Improve existing translations

+ Just fork this project, change text resources and make a pull request

### Add a new language Interface

1. Check our issue list to see if there are already someone else translating the text recourse to your language. If not, open an issue to tell others that you doing the translation, in order to avoid duplicate work.
2. Fork this repo.
3. Create a folder named `{locale}.lproj`, `local` code should be picked from [locale-identifiers.csv](https://github.com/typora/Typora-i18n/blob/master/locale-identifiers.csv).
4. Copy `*.strings` files from `Base.lproj` to `{locale}.lproj`.
5. Open `*.strings` with any text/code editor, do the translation. Please also check the translation rules.
6. Make a pull request to us.
7. We could also appreciate if you leave any contact method, like email, in issues or in `*.strings` file after your translation, so we can reach you and, at least, give free license as rewards after we come out of beta. You could also email us directly if you do not want your email address go public in Github.

### Translation rules

+ Translations in `Menu.strings` should follow <https://github.com/martnst/localize-mainmenu>.
+ If translation in <https://github.com/martnst/localize-mainmenu> is not proper on Windows/Linux, add the proper one in `Menu-electron.strings`. (see zh-Hans.lproj as one example).
+ Comment style `/* some words */` is supported, `// comment` is **NOT** supported.

### FAQ

> Can I test my translations?

Sorry… We do not support that. If you are not sure about the context of the some original English text resource or have doubts about your translation, please feel free to contact us.

### Contact

Feel free to contact us via [hi@typora.io](mailto:hi@typora.io)