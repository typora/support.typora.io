---
layout: post
title: Language Support in Code Fences
author: typora.io
category: reference
tags: [code fences]
typora-root-url: ../
date: 2016-10-20
---

The latest version of Typora supports syntax highlight of following languages (in lower case):

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
- oz
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
- fortran
- protobuf
- makefile
- tcl
- scheme
- twig
- SAS
- pseudocode
- julia
- stylus
- COBOL

Note: The language you specify in <code>```{lang}</code> is case insensitive in Typora.

### My language is not listed above...

Typora uses [CodeMirror](http://codemirror.net/) for syntax highlighting in code fences, so if the language you want is not supported in Typora, please:

1. Check whether the language is supported on <http://codemirror.net/mode/> or not. If it is, send us an email, and we will add  it.
2. If the language is not supported on <http://codemirror.net/mode/>, please check <https://github.com/codemirror/CodeMirror/wiki/Mode-wish-list> for adding syntax highlight on CodeMirror. After it is supported by CodeMirror, Typora will follow.
