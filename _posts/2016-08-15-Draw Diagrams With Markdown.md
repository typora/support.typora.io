---
layout: post
title: Draw Diagrams With Markdown
category: basic
author: typora.io
tags: [markdown, mermaid, flowchart, sequence]
typora-root-url: ../
typora-copy-images-to: ../media/diagrams
---

* Outline
{:toc}

Typora supports some Markdown extensions for diagrams, once they are enabled from preference panel. 

When exporting as HTML, PDF, epub, docx, those rendered diagrams will also be included, but diagrams features are not supported when exporting markdown into other file formats in current version. Besides, you should also notice that diagrams is not supported by standard Markdown, CommonMark or GFM. Therefore, we still recommend you to insert an image of these diagrams instead of write them in Markdown directly.

# Sequence Diagrams

This feature uses [js-sequence](https://bramp.github.io/js-sequence-diagrams/), which turns the following code block into a rendered diagram:

~~~gfm
```sequence
Alice->Bob: Hello Bob, how are you?
Note right of Bob: Bob thinks
Bob-->Alice: I am good thanks!
```
~~~

<img src="/media/diagrams/js-sequence.png" alt="js-sequence" style="zoom:50%;" />

For more details, please see [this syntax explanation](https://bramp.github.io/js-sequence-diagrams/#syntax).
### Sequence Diagrams Options

You could change CSS variable `--sequence-theme` to set theme for sequence diagrams, supported value are `simple` (default) and `hand`. For example, add following CSS in [Custom CSS](https://support.typora.io/Add-Custom-CSS/), and you will get:
```css
:root {
  --sequence-theme: hand
}
```

| --sequence-theme: simple                                     | --sequence-theme: hand                                       |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| <img src="/media/diagrams/Screen Shot 2021-04-05 at 23.38.52.png" alt="Screen Shot 2021-04-05 at 23.38.52" style="zoom:50%;" /> | <img src="/media/diagrams/js-sequence-hand.png" alt="Screen Shot 2021-03-13 at 23.56.07" style="zoom:50%;" /> |

# Flowcharts

This feature uses [flowchart.js](http://flowchart.js.org/), which turns the following code block into a rendered diagram:

~~~gfm
```flow
st=>start: Start
op=>operation: Your Operation
cond=>condition: Yes or No?
e=>end

st->op->cond
cond(yes)->e
cond(no)->op
​```
~~~

<img src="/media/diagrams/flowchart.png" alt="flowchart" style="zoom:50%;" />
# Mermaid

Typora also has integration with [mermaid](https://mermaid-js.github.io/mermaid/#/), which supports sequence diagrams, flowcharts, Gantt charts, class and state diagrams, and pie charts. 

## Sequence Diagrams

For more details see [these instructions](https://mermaid-js.github.io/mermaid/#/sequenceDiagram).

~~~gfm
```mermaid
%% Example of sequence diagram
  sequenceDiagram
    Alice->>Bob: Hello Bob, how are you?
    alt is sick
    Bob->>Alice: Not so good :(
    else is well
    Bob->>Alice: Feeling fresh like a daisy
    end
    opt Extra response
    Bob->>Alice: Thanks for asking
    end
​```
~~~

<img src="/media/diagrams/mermaid-sequence.png" alt="mermaid-sequence" style="zoom:50%;" />
## Flowcharts

For more details see [these instructions](https://mermaid-js.github.io/mermaid/#/flowchart).

~~~gfm
```mermaid
graph LR
A[Hard edge] -->B(Round edge)
    B --> C{Decision}
    C -->|One| D[Result one]
    C -->|Two| E[Result two]
​```
~~~

![mermaid-flowchart](/media/diagrams/mermaid-flowchart.png)

## Gantt Charts

For more details see [these instructions](https://mermaid-js.github.io/mermaid/#gantt).

~~~gfm
```mermaid
%% Example with selection of syntaxes
        gantt
        dateFormat  YYYY-MM-DD
        title Adding GANTT diagram functionality to mermaid

        section A section
        Completed task            :done,    des1, 2014-01-06,2014-01-08
        Active task               :active,  des2, 2014-01-09, 3d
        Future task               :         des3, after des2, 5d
        Future task2               :         des4, after des3, 5d

        section Critical tasks
        Completed task in the critical line :crit, done, 2014-01-06,24h
        Implement parser and jison          :crit, done, after des1, 2d
        Create tests for parser             :crit, active, 3d
        Future task in critical line        :crit, 5d
        Create tests for renderer           :2d
        Add to mermaid                      :1d

        section Documentation
        Describe gantt syntax               :active, a1, after des1, 3d
        Add gantt diagram to demo page      :after a1  , 20h
        Add another diagram to demo page    :doc1, after a1  , 48h

        section Last section
        Describe gantt syntax               :after doc1, 3d
        Add gantt diagram to demo page      : 20h
        Add another diagram to demo page    : 48h
​```
~~~

![mermaid-Gantt](/media/diagrams/mermaid-Gantt-chart.png)

## Class Diagrams

For more details see [these instructions](https://mermaid-js.github.io/mermaid/#/classDiagram).

~~~gfm
```mermaid
classDiagram
      Animal <|-- Duck
      Animal <|-- Fish
      Animal <|-- Zebra
      Animal : +int age
      Animal : +String gender
      Animal: +isMammal()
      Animal: +mate()
      class Duck{
          +String beakColor
          +swim()
          +quack()
      }
      class Fish{
          -int sizeInFeet
          -canEat()
      }
      class Zebra{
          +bool is_wild
          +run()
      }
```
~~~

<img src="/media/new-80/class-diagram.png" alt="class-diagram" style="zoom:50%;" />
## State Diagrams

For more details see [these instructions](https://mermaidjs.github.io/#/stateDiagram).

~~~gfm
```mermaid
stateDiagram
    [*] --> Still
    Still --> [*]

    Still --> Moving
    Moving --> Still
    Moving --> Crash
    Crash --> [*]
```
~~~

<img src="/media/new-80/state-diagram.png" alt="state-diagram" style="zoom:50%;" />
## Pie Charts

~~~gfm
```mermaid
pie
    title Pie Chart
    "Dogs" : 386
    "Cats" : 85
    "Rats" : 150 
```
~~~

<img src="/media/new-80/pie-chart.png" alt="pie-chart" style="zoom:50%;" />
## Mermaid Options

### Overview

You can change Mermaid options by adding [Custom CSS](https://support.typora.io/Add-Custom-CSS/), supported options include:

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
| `:root {--mermaid-theme:forest;}`  | <img src="/media/new-97/Screen Shot 2020-12-05 at 17.09.42.png" alt="Screen Shot 2020-12-05 at 17.09.42" style="zoom:50%;" /> |
| `:root {--mermaid-theme:neutral;}` | <img src="/media/new-97/Screen Shot 2020-12-05 at 17.10.11.png" alt="Screen Shot 2020-12-05 at 17.10.11" style="zoom:50%;" /> |

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