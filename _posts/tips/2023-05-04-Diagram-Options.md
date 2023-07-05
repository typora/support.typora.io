---
layout: post
title: Diagram Options
author: typora.io
category: tips
tags: [diagram, mermaid, sequence]
typora-root-url: ../../
---

## Left Align Diagrams

You can add below custom CSS following [Add Custom CSS](/Add-Custom-CSS/) to left align your diagram.

```css
.md-diagram-panel-preview {text-align:left;}
```

## Config [Sequence](/Draw-Diagrams-With-Markdown/#sequence-diagrams) Diagrams

Please [refer here for introductions about sequence diagram](/Draw-Diagrams-With-Markdown/#sequence-diagrams).

You could change CSS variable `--sequence-theme` to set theme for [sequence diagrams](/Draw-Diagrams-With-Markdown/#sequence-diagrams), supported value are `simple` (default) and `hand`. For example, add following CSS in [Custom CSS](https://support.typora.io/Add-Custom-CSS/), and you will get:

```css
:root {
  --sequence-theme: hand
}
```

| --sequence-theme: simple                                     | --sequence-theme: hand                                       |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| <img src="/media/diagrams/Screen Shot 2021-04-05 at 23.38.52.png" alt="Screen Shot 2021-04-05 at 23.38.52" style="zoom:50%;" /> | <img src="/media/diagrams/js-sequence-hand.png" alt="Screen Shot 2021-03-13 at 23.56.07" style="zoom:50%;" /> |

## Config [Mermaid](/Draw-Diagrams-With-Markdown/#mermaid) Diagrams

### Global Config

You can change [Mermaid](/Draw-Diagrams-With-Markdown/#mermaid) options by adding [Custom CSS](https://support.typora.io/Add-Custom-CSS/), supported options include:

```css
:root {
  --mermaid-theme: default; /*or base, dark, forest, neutral, night */
  --mermaid-font-family: "trebuchet ms", verdana, arial, sans-serif;
  --mermaid-sequence-numbers: off; /* or "on", see https://mermaid-js.github.io/mermaid/#/sequenceDiagram?id=sequencenumbers*/
  --mermaid-flowchart-curve: linear /* or "basis", see https://github.com/typora/typora-issues/issues/1632*/;
  --mermaid--gantt-left-padding: 75; /* see https://github.com/typora/typora-issues/issues/1665*/
}
```

Please note that if you export document with other themes than currently used one, some mermaid options will not be applied to exported HTML / PDF / Image. For example, if you currently use them Github, but while export to PDF, you set theme YYY for PDF export, and YYY.css defines `--mermaid-sequence-numbers: on`, then the `--mermaid-sequence-numbers: on` would not be applied to exported PDF.

### Mermaid Theme

Added `--mermaid-theme` css variable to quickly define a mermaid theme that fits your theme, the value can be `base`, `default`, `dark`, `forest`, `neutral`, `night` (the one used in night theme), for example:

| CSS                                | Mermaid Demo                                                 |
| ---------------------------------- | ------------------------------------------------------------ |
| `:root {--mermaid-theme:dark;}`    | <img src="/media/new-97/Screen Shot 2020-12-05 at 17.08.46.png" alt="Screen Shot 2020-12-05 at 17.08.46" style="zoom:50%;" /> |
| `:root {--mermaid-theme:neutral;}` | <img src="/media/new-97/Screen Shot 2020-12-05 at 17.09.42.png" alt="Screen Shot 2020-12-05 at 17.09.42" style="zoom:50%;" /> |
| `:root {--mermaid-theme:forest;}`  | <img src="/media/new-97/Screen Shot 2020-12-05 at 17.10.11.png" alt="Screen Shot 2020-12-05 at 17.10.11" style="zoom:50%;" /> |

### Auto Numbering

Add `--mermaid-sequence-numbers: on;` in [Custom CSS](https://support.typora.io/Add-Custom-CSS/) will enable auto numbering for sequence in mermaid:

| --mermaid-sequence-numbers:off                               | --mermaid-sequence-numbers:on                                |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| <img src="/media/new-10/Screen Shot 2021-04-05 at 23.08.37.png" alt="Screen Shot 2021-04-05 at 23.08.37" style="zoom:50%;" /> | <img src="/media/new-10/Screen Shot 2021-04-05 at 23.20.31.png" alt="Screen Shot 2021-04-05 at 23.20.31" style="zoom:50%;" /> |

### Flowchart Curve

Add `--mermaid-flowchart-curve: basis` to get other type of curves.

| --mermaid-flowchart-curve: linear;                           | --mermaid-flowchart-curve: basis                             | --mermaid-flowchart-curve: natural;                          | --mermaid-flowchart-curve: step;                             |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| <img src="/media/new-10/Screen Shot 2021-04-05 at 23.25.41.png" alt="Screen Shot 2021-04-05 at 23.25.41" style="zoom:50%;" /> | <img src="/media/new-10/Screen Shot 2021-04-05 at 23.30.11.png" alt="Screen Shot 2021-04-05 at 23.30.11" style="zoom:50%;" /> | <img src="/media/new-10/Screen Shot 2021-04-05 at 23.28.06.png" alt="Screen Shot 2021-04-05 at 23.28.06" style="zoom:50%;" /> | <img src="/media/new-10/Screen Shot 2021-04-05 at 23.28.52.png" alt="Screen Shot 2021-04-05 at 23.28.52" style="zoom:50%;" /> |

### Gantt Padding

| --mermaid--gantt-left-padding:75                             | --mermaid--gantt-left-padding:200                            |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| <img src="/media/new-10/Screen Shot 2021-04-05 at 23.33.31.png" alt="Screen Shot 2021-04-05 at 23.33.31" style="zoom:50%;" /> | <img src="/media/new-10/Screen Shot 2021-04-05 at 23.33.00.png" alt="Screen Shot 2021-04-05 at 23.33.00" style="zoom:50%;" /> |

### Inline Mermaid Config

You can add `%%{init: [options]}%%` in the first line of mermaid diagram to config mermaid details like below:

<img src="/media/new-1.4/Screen%20Shot%202022-08-19%20at%2016.04.36.png" alt="Screen Shot 2022-08-19 at 16.04.36" style="zoom:50%;" />

You can find full document on <https://mermaid-js.github.io/mermaid/#/./directives>.