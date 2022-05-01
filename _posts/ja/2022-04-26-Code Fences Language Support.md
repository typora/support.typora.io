---
layout: post
title: コードフェンスのサポート言語
author: typora.io
typora-root-url: ../
permalink: /ja/Code-Fences-Language-Support/
---

[English Original Version](/Code-Fences-Language-Support/) [Help Improve the Translation](https://github.com/typora/wiki-website)

最新版の Typora は、以下の言語のシンタックスハイライトをサポートしています (小文字)。

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
- crystal
- ASN.1
- gherkin
- smalltalk
- turtle
- glsl
- apl
- ABAP
- Q
- V
- forth
- nim
- solidity

注意: <code>```{lang}</code> で指定する言語は、Typora では大文字と小文字を区別しません。

### 私の使用言語が上記に記載されていません...

Typora はコードフェンスのシンタックスハイライトに [CodeMirror](http://codemirror.net/) を使用しているため、必要な言語が Typora でサポートされていない場合は、次のようにしてください。

1. その言語が <http://codemirror.net/mode/> でサポートされているかどうかを確認します。 対応している場合は、メールでご連絡いただければ、追加いたします。
2. <http://codemirror.net/mode/> で対応していない言語の場合、その言語が CodeMirror でシンタックスハイライトされるように <https://github.com/codemirror/CodeMirror/wiki/Mode-wish-list> に追加されたことを確認してください。 CodeMirror でその言語がサポートされた後に、Typora が追随する予定です。
