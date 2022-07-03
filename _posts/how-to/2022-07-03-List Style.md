---
layout: post
title: Customize List Styles
category: how-to
author: typora.io
tags: [markdown, style]
typora-root-url: ../../
typora-copy-images-to: ../../media/lists
---

You can [add following custom CSS](/Add-Custom-CSS/) to customize the styles of lists.

## Ordered List Styles

| Type                       | Output                                                       | CSS                                           |
| -------------------------- | ------------------------------------------------------------ | --------------------------------------------- |
| Numbers (default style)    | <img src="/media/lists/Screen Shot 2022-07-03 at 17.09.16.png" alt="Screen Shot 2022-07-03 at 17.09.16" style="zoom:50%;" /> | `ol {list-style-type: decimal;}`              |
| Numbers (with leading 0)   | <img src="/media/lists/Screen Shot 2022-07-03 at 17.09.38.png" alt="Screen Shot 2022-07-03 at 17.09.38" style="zoom:50%;" /> | `ol {list-style-type: decimal-leading-zero;}` |
| Chinese Numbers            | <img src="/media/lists/Screen Shot 2022-07-03 at 17.10.23.png" alt="Screen Shot 2022-07-03 at 17.10.23" style="zoom:50%;" /> | `ol {list-style-type: cjk-ideographic;}`      |
| Hiragana                   | <img src="/media/lists/Screen Shot 2022-07-03 at 17.10.49.png" alt="Screen Shot 2022-07-03 at 17.10.49" style="zoom:50%;" /> | `ol {list-style-type: hiragana;}`             |
| Katakana                   | <img src="/media/lists/Screen Shot 2022-07-03 at 17.11.12.png" alt="Screen Shot 2022-07-03 at 17.11.12" style="zoom:50%;" /> | `ol {list-style-type: katakana;}`             |
| Alphabet                   | <img src="/media/lists/Screen Shot 2022-07-03 at 17.11.46.png" alt="Screen Shot 2022-07-03 at 17.11.46" style="zoom:50%;" /> | `ol {list-style-type: lower-alpha;}`          |
| Alphabet (uppercase)       | <img src="/media/lists/Screen Shot 2022-07-03 at 17.12.01.png" alt="Screen Shot 2022-07-03 at 17.12.01" style="zoom:50%;" /> | `ol {list-style-type: upper-alpha;}`          |
| Greek                      | <img src="/media/lists/Screen Shot 2022-07-03 at 17.12.20.png" alt="Screen Shot 2022-07-03 at 17.12.20" style="zoom:50%;" /> | `ol {list-style-type: lower-greek;}`          |
| Roman numerals (lowercase) | <img src="/media/lists/Screen Shot 2022-07-03 at 17.12.34.png" alt="Screen Shot 2022-07-03 at 17.12.34" style="zoom:50%;" /> | `ol {list-style-type: lower-roman;}`          |
| Roman numerals (uppercase) | <img src="/media/lists/Screen Shot 2022-07-03 at 17.12.51.png" alt="Screen Shot 2022-07-03 at 17.12.51" style="zoom:50%;" /> | `ol {list-style-type: upper-roman;}`          |

## Unordered List Styles

| Type            | Output                                                       | CSS                             |
| --------------- | ------------------------------------------------------------ | ------------------------------- |
| circle          | <img src="/media/lists/Screen Shot 2022-07-03 at 17.22.26.png" alt="Screen Shot 2022-07-03 at 17.22.26" style="zoom:50%;" /> | `ul {list-style-type: circle;}` |
| disc            | <img src="/media/lists/Screen Shot 2022-07-03 at 17.22.37.png" alt="Screen Shot 2022-07-03 at 17.22.37" style="zoom:50%;" /> | `ul {list-style-type: disc;}`   |
| square          | <img src="/media/lists/Screen Shot 2022-07-03 at 17.22.50.png" alt="Screen Shot 2022-07-03 at 17.22.50" style="zoom:50%;" /> | `ul {list-style-type: square;}` |
| Custom Contents | <img src="/media/lists/Screen Shot 2022-07-03 at 17.25.15.png" alt="Screen Shot 2022-07-03 at 17.25.15" style="zoom:50%;" /> | `ul {list-style-type: "* ";}`   |
| Custom Contents | <img src="/media/lists/Screen Shot 2022-07-03 at 17.25.27.png" alt="Screen Shot 2022-07-03 at 17.25.27" style="zoom:50%;" /> | `ul {list-style-type: "😎 ";}`   |

## Nested Lists

You can also change styles for nested lists using CSS selector, for example:

```css
ol {
  list-style-type: decimal;
}

ol ol {
 list-style-type: lower-alpha;
}

ol ol ol{
 list-style-type: lower-roman;
}
```

Which will render lists like this:

<img src="/media/lists/Screen Shot 2022-07-03 at 17.19.31.png" alt="Screen Shot 2022-07-03 at 17.19.31" style="zoom:50%;" />

## Task Lists

Please [check document here](/Task-List/)

## More Styles

You can find more listing styles at [here](https://www.w3schools.com/cssref/pr_list-style-type.asp).
