---
layout: post
title: Page Breaks
date: 2017-09-20
update: 2019-11-16
category: how-to
author: [jonathan.is, Crissov]
tags: [markdown, pagination, CSS, HTML]
typora-root-url: ../
typora-copy-images-to: ../media/page-breaks
---

Automatic Page Breaks
---------------------

Sometimes you may want to export to a PDF, 
and have page breaks before all [top-level headings](Markdown-Reference/#headers), 
perhaps always putting the header on a right-hand page.

Top-level headings are created with a single-hash prefix `#` (and optional suffix)
or an equals-sign underline `====`; 
both yield `<h1>` elements in HTML output.
Second-level headings are created with a double-hash prefix `##` 
or an hyphen-minus underline `----`; 
both yield `<h2>` elements.
Headings from the third `###` to sixth `######` level have no alternate underline syntax 
and yield HTML elements `<h3>` through `<h6>`, respectively.

To add automatic pagination before headings,
open the [themes folder](../About-Themes/), 
and edit the [respective CSS file](../Add-Custom-CSS/). 

~~~~ css
@media print, (overflow-block: paged) or (overflow-block: optional-paged)
{
  /* Move top-level headings to a new page on the right-hand side: */
  h1
  {
    page-break-before: right; /* CSS 2 */
    break-before: recto;      /* CSS 3+, 
      also works for languages written and paginated right-to-left */
  }
  /* Override the previous ruleset for the very first heading: */
  h1:first-of-type,
  section > h1:first-child
  {
    page-break-before: avoid; /* CSS 2 */
    break-before: avoid;      /* CSS 3+ */
  }
  /* Force second-level headings to begin in a new column or
     possiblyon a new page if it was in the last of multiple columns otherwise: */
  h2
  {
    break-before: column;
  }
  /* Headings should not be the last paragraph on a page: */
  h1, h2, h3, h4, h5, h6
  {
    page-break-after: avoid;
  }
  /* Consecutive headings with deepening level should not be split across pages: */
  h1+h2, h2+h3, h3+h4, h4+h5, h5+h6
  {
    page-break-before: avoid;
  }
}
~~~~

Now when exporting, 
at least one new page will be created before each top-level heading, 
except the first one.

This usually requires, however, that the Markdown file is first converted to HTML and then to PDF or print. 
It will probably not work as intended if converting from intermediate LaTeX to PDF, 
as Pandoc does by default.

Forced Page Break
-----------------

There are several ways to insert a manual page break in a document using custom CSS.

### HTML and Inline CSS

If only needed once, 
the style rule can be embedded in place:

~~~~ markdown
Markdown with embedded HTML:

<div style="page-break-after: always; break-after: page;"></div>

Markdown continues.
~~~~
~~~~ html
<p>Markdown with embedded HTML:</p>
<div style="page-break-after: always; break-after: page;"></div>
<p>Markdown continues.</p>
~~~~

### HTML and Central CSS

If manual page breaks are needed frequently,
it makes more sense to use an [external stylesheet](../Add-Custom-CSS/)
for better maintenance and less clutter.

~~~~ markdown
Markdown with embedded HTML:

<div class="page-break"></div>

Markdown continues.
~~~~
~~~~ html
<p>Markdown with embedded HTML:</p>
<div class="page-break"></div>
<p>Markdown continues.</p>
~~~~
~~~~ css
/* completely hide the element where it is not needed */
.page-break
{
    display: none; 
}
@media print, (overflow-block: paged) or (overflow-block: optional-paged)
{
  .page-break
  {
    display: block;
    page-break-after: always; /* CSS 2 */
         break-after: page;   /* CSS 3+ */
  }
}
~~~~

### Thematic Breaks

Alternatively, existing Markdown structure can be repurposed.
This way, neither HTML nor CSS is necessary within the Markdown file at all.

There are three ways to insert a [thematic break in Markdown](https://spec.commonmark.org/current/#thematic-breaks),
using three or more asterisks `*`, hyphens `-` or underscores `_`,
possibly with whitespace in between them. 
They all result in the same HTML (or PDF) output, 
which can then be used to create page breaks. 
Basically all Markdown presentation packages follow this convention as well,
inserting a slide transition for every thematic break.

~~~~ markdown
Break incoming

  * * *

in between breaks

----

still one more to come

___________

after the final break.
~~~~
~~~~ html
<p>Break incoming</p>
<hr>
<p>in between breaks</p>
<hr>
<p>still one more to come</p>
<hr>
<p>after the final break.</p>
~~~~

The only thing required is [some custom CSS](../Add-Custom-CSS/).

~~~~ css
@media print, (overflow-block: paged) or (overflow-block: optional-paged)
{
  hr
  {
    page-break-after: always; /* CSS 2 */
         break-after: region; /* CSS 3+ */
    /* minimal layout disruption: */
    height: 0.1mm; visibility: hidden;
  }
}
~~~~

CSS Details
-----------

[CSS Level 3](https://drafts.csswg.org/css-break-3/#breaking-controls) and 
[later](https://drafts.csswg.org/css-break/#breaking-controls) 
use a more generic approach to breaking content into pages etc. than
[CSS Level 2](https://drafts.csswg.org/css2/page.html#page-breaks).

~~~~ 
break-after|before: auto           > page-break-after|before: auto
                  | avoid 
                  | avoid-page     = page-break-after|before: avoid
                  | avoid-column 
                  | avoid-region 
                  | page           = page-break-after|before: always
                  | left           = page-break-after|before: left
                  | right          = page-break-after|before: right
                  | recto | verso 
                  | column 
                  | region
break-inside:       auto           > page-break-inside: auto
                  | avoid 
                  | avoid-page     = page-break-inside: avoid
                  | avoid-column 
                  | avoid-region
~~~~

