---
layout: post
title: テーマについて
author: typora.io
typora-root-url: ../
permalink: /ja/About-Themes/
---

[English Original Version](/About-Themes/) [Help Improve the Translation](https://github.com/typora/wiki-website)

## テーマの変更

Typora には 6 つの組み込みテーマがあり、メニューバーの **テーマメニュー** で選択できます。 また、Typora のスタイルを設定するために、独自のカスタムテーマをダウンロード、インストール、変更、または作成することもできます。

Typora はすべてのスタイルに CSS を使用しています。 テーマメニューに表示される各テーマは、「Typora のテーマフォルダ」の下にある一つの `.css` ファイルに相当します。 したがって、「Typora のテーマフォルダ」の下にある対応する CSS ファイルを追加/変更することで、テーマを追加/変更できます。

## ライトモードとダークモードでテーマを使用する

ライトモードとダークモード (macOS / Windows) に別々のテーマを設定できます。 システムの配色が変更されると、選択したテーマが適用されます。

<img src="/media/new-97/Screen Shot 2020-12-05 at 17.01.49.png" alt="Screen Shot 2020-12-05 at 17.01.49" style="zoom:50%;" />

また、[prefers-color-scheme](https://developer.mozilla.org/docs/Web/CSS/@media/prefers-color-scheme) のメディアクエリを使用して、ライトモードとダークモードの両方に対応するレスポンシブテーマを作成することも可能です。

## 命名規則

独自のテーマを作成する場合は、次のようなテーマ CSS のファイル命名規則を使う必要があります。 命名規則とは、大文字と、`-` 以外のアルファベット以外の文字を使わないでください。 また、空白文字を `-` で置き換えると、Typora はそれらをメニュー項目で読み取り可能なラベルに変換します。 たとえば、`my-first-typora-theme.css` の場合、Typora は [テーマ] メニューの下に「My First Typora Theme」を表示します。

## Typora のテーマを取得する

デザイナー/開発者がカスタムテーマを共有するための公式サイト [Typora Theme Gallery](http://theme.typora.io) を開設しています。 そこからテーマをダウンロードできます。

<img src="/media/new-97/Screen Shot 2020-12-05 at 22.09.28.png" alt="Screen Shot 2020-12-05 at 22.09.28" style="zoom:50%;" />

## カスタムテーマのインストール

1. テーマフォルダを開きます。(下記の手順を参照してください)
2. `.css` ファイルとフォントや画像などの関連リソースを、新しく開いたフォルダにコピーまたは移動します。
3. Typora を再起動し、`テーマ` メニューから追加したテーマを選択します。

## テーマフォルダを開く

### macOS

設定パネルを開き、[テーマフォルダを開く] ボタンをクリックします。

![typora-preference-mac](/media/about-themes/Snip20160921_1.png)

macOS の場合、通常は `/Users/{username}/Library/Application Support/abnerworks.Typora/themes/` になります。

### Windows/Linux

メニューバーの `ファイル` → `設定` から設定パネルを開き、[テーマフォルダを開く] をクリックします。

![typora-preference-electron](/media/about-themes/Snip20160921_2.png)

## 現在のスタイルを変更する

全テーマのフォントファミリーを変更したり、特定のテーマの見出しのフォントカラーを変更したりしたい場合があります。 このような場合、既存の CSS ファイルを丸ごとコピー/修正する必要はなく、[カスタム CSS の追加](/Add-Custom-CSS/) で十分です。

## 自分自身のテーマを書く

[Write Custom Theme for Typora (Typora のカスタムテーマを作成する)](http://theme.typora.io/doc/Write-Custom-Theme/) を参照してください。

## テーマ CSS のデバッグ

Chrome/Safari の DevTools を開くと、要素のスタイルをデバッグできます。

- macOS では、`ヘルプ` -> `デバッグを有効にする (Enable Debug)` メニュー項目をチェックし、Typora のハイブリッド編集ビューで任意の場所を右クリックし、コンテキストメニューから [要素を調査] をクリックすると、デバッグできます。
- Windows/Linux では、メニューの `表示` -> `開発ツール表示切替` から、DevTools を開くことができます。
