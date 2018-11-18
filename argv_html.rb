#!/usr/koeki/bin/ruby
# -*- conding:utf-8 -*-

#letter = "b"
#name = "rubio"

name = ARGV[0]
if ARGV[0] == nil  # nil 何も入っていない
  STDERR.print("./プログラム名 アルファベット文字列\n")
  exit             #プログラムを抜ける
end

cont = ""

head = "<html>
<head>
<title>アルファベット表記</title>
</head>
<body><p>"

foot = "</p></body>
</html>\n"

name.chars{|letter|
  cont += "&#" + letter.ord.to_s + ";"
  # ordで文字を10進数表示
  # to_s数値を文字列へ変換
}
#chars で一文字ずつ文字を取りだし内部変数 letter にいれる

print head + cont + foot

#ファイル名 > 出力ファイル
