# AppendixAfter

「本文の途中では書きたくないが、付録としてまとめて出したい」コンテンツをストリームに貯め、ドキュメントの終端で一括出力する LaTeX パッケージです。`docmute` を使ったサブファイル運用や Bib(La)TeX を併用するケースを想定しています。

## 昨日

- 本文中で書いた内容を即時出力せず、付録として後段にまとめて出力
- メインファイル用モードとサブファイル用モードを切替 (`mode=main|sub|off`)
- サブファイルだけを個別コンパイルしたときも付録コンテンツを保持・出力
- 自動付録化をオン/オフ可能
- 安全な拡張子チェックと出力ファイル名のカスタマイズ

## 必要環境

- LaTeX2e 2023/06/01 以降

## インストール

`AppendixAfter.sty` を TeX をTEXMFLOCAL等に置いてください。(`kpsewhich -var-value=TEXMFLOCAL`をすれば見つけることが出来ます。)

## 使い方

### 基本（メインファイル）
```tex
\documentclass{jsarticle}
\usepackage[mode=main]{AppendixAfter} % auto-appendix が既定で有効
\begin{document}
本文......

\input{./section1/subfile.tex}

\end{document}
```

### サブファイル側
```tex
\documentclass{jsarticle}
\usepackage{AppendixAfter}
\begin{document}
本文（サブファイル単体コンパイル用）。

\AppendixInput[appendix1.tex]{./section1/appendix1.tex}

\begin{AfterAppendix}
付録に送りたい内容。
\end{AfterAppendix}

\end{document}
```