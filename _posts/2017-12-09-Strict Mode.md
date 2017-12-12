---
layout: post
title: Strict Mode
category: how-to
author: typora.io
tags: [markdown]
typora-root-url: ../
typora-copy-images-to: ../media/strict-mode
---

You could enable **strict mode** to tell Typora to follow GFM's spec more strictly. You could disable it if you want the parse rule more “fault tolerate”.

## Strict Mode

In Strict Mode, if you want to input **headings**, you must put whitespace after the `#` characters, for example (`·` represents for one whitespace):

| Markdown Source | Result in Strict Mode             | Result without Strict Mode        |
| --------------- | --------------------------------- | --------------------------------- |
| `###Header`     | ###Header                         | {::nomarkdown}<h3>Header</h3>{:/} |
| `###·Header`    | {::nomarkdown}<h3>Header</h3>{:/} | {::nomarkdown}<h3>Header</h3>{:/} |

In Strict Mode, if you want to create new block/paragraph in a list item, you must input enough whitespace indentation to make the new paragraph strictly align with its previous paragraph, for example (`·` represents for one whitespace):

<table><thead><tr><th>Strict Mode</th><th>without Strict Mode</th></tr></thead>

<tbody><tr><td>
<pre>
1.·aaa

··bbb // not in same list
</pre><hr/>

<pre>
1.·aaa

···bbb // in same list
</pre><hr/>

<pre>
10.·aaa
··1.·ccc // not a sub list
</pre><hr/>

<pre>
10.·aaa
····1.·ccc // a sub list
</pre>
</td><td>
<pre>
1.·aaa

··bbb // in same list
</pre><hr/>

<pre>
1.·aaa

···bbb // in same list
</pre><hr/>

<pre>
10.·aaa
··1.·ccc // a sub list
</pre><hr/>

<pre>
10.·aaa
··· 1.·ccc // a sub list
</pre>
</td></tr></tbody></table>  

## Enable/Disable Strict Mode

This option can be toggled in `Preference Panel` → `Markdown` section, the option will be applied after Typora has been restarted.