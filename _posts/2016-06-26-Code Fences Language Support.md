---
layout: post
title: Language Support in Code Fences
author: typora.io
category: reference
tags: [code fences]
typora-root-url: ../
date: 2016-10-20
---

You can specify the language syntax highlighting to be used in each code block by adding the language name immediately following the three-backtick block opening marker, for example:

```
​```markdown
[code...]
​```
```

A small pop-up window will open below and to the right of the code block into which you can type a language assignment using any of the following designators (in lower case):

The latest version of Typora supports syntax highlighting for following languages:

- asp (alias: aspx, asp.net)
- javascript (alias: js, text/javascript)
- json
- typescript
- clojure
- coffeescript (alias: coffee)
- css
- less
- scss
- gfm (github flavored markdown)
- markdown
- xml
- haskell
- html (alias: htmlmixed)
- lua
- commonlisp (alias: lisp)
- pascal
- perl
- php (and php+html)
- cython
- python
- ruby
- shell (alias: sh, bash)
- sql
- mssql
- mysql
- mariadb
- cql (alias: cassandra)
- plsql
- tex (and stex, latex)
- tiddlywiki (alias: wiki)
- vb (alias: basic)
- vbscript
- velocity
- verilog
- xquery
- yaml
- go
- groovy
- nginx
- octave (alias: matlab)
- c (alias: clike)
- c++ (alias: cpp, cc)
- objective-c (alias: obj-c, objc)
- scala
- c# (alias: csharp)
- java
- squirrel
- ceylon
- kotlin
- swift
- r (alias: rlang, r-lang)
- d
- diff
- erlang
- http
- jade
- rst (alias: restructuredtext)
- rust
- jinja2
- jsp
- erb
- embeddedjs (alias: ejs)
- powershell
- dockerfile
- jsx (alias: react)
- vue (alias: vue.js, vue-template)
- nsis
- tiki (alias: tikiwiki, tiki-wiki)
- properties (alias: ini)
- livescript
- assembly (alias: asm, nasm, gas)
- toml
- ocaml
- F#
- elm
- elixir
- spreadsheet
- pgp (alias: asciiarmor, pgp-keys)
- cmake
- cypher
- dart
- django
- dtd (alias: xml-dtd)
- dylan
- handlebars
- idl
- web-idl
- yacas
- mbox
- bhdl
- julia
- haxe
- hxml

**Note:** the language you specify is case-insensitive when you choose the corresponding syntax highlight.

#### Change Log:

- 0.9.9.8.8/0.9.23: Add syntax highlighting for `cmake`, `cypher`, `dart`, `django`, `dtd`, `dylan`, `handlebars`, `idl`, `web idl`, `yacas`, `mbox`, `vhdl`, `julia`, `haxe`, and `hxml`.
- 0.9.9.8.4/0.9.22: Add syntax highlight for `elixir`.
- 0.9.9.8.2/0.9.21: Add syntax highlight for `ocaml`, `F#`, `elm`, `spreadsheet` and `pgp(Ascii Armor)`.
- 0.9.9.8/0.9.20: Add syntax highlight for `Octave` and `matlab`.


### My language is not listed above...

Typora uses CodeMirror for syntax highlighting in fenced code. If the language you want is not supported in Typora, you could:

1. Check whether the language is support on <http://codemirror.net/mode/> or not, if so, [send us an email](mailto:support@typora.io), and we will add the necessary language support.
2. If the language is not supported on <http://codemirror.net/mode/>, please check <https://github.com/codemirror/CodeMirror/wiki/Mode-wish-list> for adding syntax highlight on CodeMirror. After it is supported by CodeMirror, Typora will follow.

