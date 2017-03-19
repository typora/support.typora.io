---
layout: post
title: Draw Diagrams With Markdown
category: basic
author: typora.io
tags: [markdown, mermaid, flowchart, sequence]
typora-root-url: ../
---

Typora supports some Markdown extensions for diagrams; you can enable this feature in the **Preference panel**. Rendered diagrams will be included when exporting `HTML`, `.pdf`, `.epub`, or `docx`, but the diagrams feature is not supported in current versions of Typora when exporting Markdown into other file formats. Diagrams are not supported at all by standard Markdown, [CommonMark](http://commonmark.org/) or GitHub-Flavoured Markdown (GFM). We recommend that you use images of diagrams instead of writing them in Markdown.

# Sequence

Image rendering in Typora is powered by [js-sequence](https://bramp.github.io/js-sequence-diagrams/), which would turn the following code block into a rendered diagram:

~~~gfm
​```sequence
Alice->Bob: Hello Bob, how are you?
Note right of Bob: Bob thinks
Bob-->Alice: I am good thanks!
​```
~~~

![Snip20160816_1](/media/diagrams/Snip20160816_1.png)

Please refer [here](https://bramp.github.io/js-sequence-diagrams/#syntax) for syntax explanation.

# Flowchart

Flowchart rendering in Typora is powered by [flowchart.js](http://flowchart.js.org/), which would turns the following code block into a rendered diagram:

~~~gfm
​```flow
st=>start: Start
op=>operation: Your Operation
cond=>condition: Yes or No?
e=>end

st->op->cond
cond(yes)->e
cond(no)->op
​```
~~~

![Snip20160816_2](/media/diagrams/Snip20160816_2.png)

# Mermaid

Typora also integrates with [mermaid](https://knsv.github.io/mermaid/#mermaid), which supports sequence, flowchart and GANTT charts.

## Sequence

See [this doc](https://knsv.github.io/mermaid/#sequence-diagrams):

~~~gfm
​```mermaid
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

![Snip20160816_3](/media/diagrams/Snip20160816_3.png)

## Flowchart

See [this doc](https://knsv.github.io/mermaid/#flowcharts-basic-syntax):

~~~gfm
​```mermaid
graph LR
A[Hard edge] -->B(Round edge)
    B --> C{Decision}
    C -->|One| D[Result one]
    C -->|Two| E[Result two]
​```
~~~

![Snip20160816_4](/media/diagrams/Snip20160816_4.png)

## Gantt

see [this doc](https://knsv.github.io/mermaid/#gant-diagrams)

~~~gfm
​```mermaid
%% Example with slection of syntaxes
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

![Snip20160816_5](/media/diagrams/Snip20160816_5.png)

