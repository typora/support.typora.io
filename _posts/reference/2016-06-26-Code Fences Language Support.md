---
layout: post
title: Language Support in Code Fences
author: typora.io
category: reference
tags: [code fences]
typora-root-url: ../../
date: 2016-10-20
---

[日本語 (ja)](/ja/Code-Fences-Language-Support/)

The latest version of Typora supports syntax highlight of following languages (in lower case):

- ABAP
- apl
- ASN.1
- asp (alias: aspx, asp.net)
- assembly (alias: asm, nasm, gas)
- bhdl
- c (alias: clike)
- c# (alias: csharp)
- c++ (alias: cpp, cc)
- ceylon
- clojure
- cmake
- COBOL
- coffeescript (alias: coffee)
- commonlisp (alias: lisp)
- cql (alias: cassandra)
- crystal
- css
- cypher
- cython
- d
- dart
- diff
- django
- dockerfile
- dtd (alias: xml-dtd)
- dylan
- elixir
- elm
- embeddedjs (alias: ejs)
- erb
- erlang
- F#
- forth
- fortran
- gfm (github flavored markdown)
- gherkin
- glsl
- go
- groovy
- handlebars
- haskell
- haxe
- htaccess
- hive
- html (alias: htmlmixed)
- http
- hxml
- idl
- jade
- java
- javascript (alias: js, text/javascript)
- jinja2
- json
- jsp
- jsx (alias: react)
- julia
- kotlin
- less
- livescript
- lua
- makefile
- mariadb
- markdown
- mbox
- mssql
- mysql
- nginx
- nim
- nsis
- objective-c (alias: obj-c, objc)
- ocaml
- octave (alias: matlab)
- oz
- pascal
- PEG.js
- perl
- pgp (alias: asciiarmor, pgp-keys)
- php (and php+html)
- plsql
- powershell
- postgresql
- properties (alias: ini)
- protobuf
- pseudocode
- pug
- python
- Q
- r (alias: rlang, r-lang)
- rst (alias: restructuredtext)
- ruby
- rust
- SAS
- scala
- scheme
- scss
- shell (alias: sh, bash)
- smalltalk
- smarty
- solidity
- spreadsheet
- sql
- squirrel
- stata
- stylus
- svelte
- swift
- systemverilog
- tcl
- tex (and stex, latex)
- tiddlywiki (alias: wiki)
- tiki (alias: tikiwiki, tiki-wiki)
- toml
- turtle
- twig
- typescript
- V
- vb (alias: basic)
- vbscript
- velocity
- verilog
- vue (alias: vue.js, vue-template)
- web-idl
- xml
- xquery
- yacas
- yaml
- yara

Note: The language you specify in <code>```{lang}</code> is case insensitive in Typora.

### My language is not listed above...

Typora uses [CodeMirror](http://codemirror.net/) for syntax highlighting in code fences, so if the language you want is not supported in Typora, please:

1. Check whether the language is supported on <http://codemirror.net/mode/> or not. If it is, send us an email, and we will add  it.
2. If the language is not supported on <http://codemirror.net/mode/>, please check the the [discussion forum for CodeMirror](https://discuss.codemirror.net/) to see if that language is under consideration. After it is supported by CodeMirror, Typora will follow.
