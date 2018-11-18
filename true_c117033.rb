#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

x = 1024 #自分で定めた数
y = 2   #素数の2
print(x.to_s + "を素因数分解すると\n",) #to_s で数値から文字列に変換

while true
  if
      x % y == 0 # %は余り
    x /= y #2で割る
    printf(y.to_s + "\n") #割った結果のyを表示
  else
    y += 1 #2で割った後1を足す
  end
end

if x > 1
  printf(a.to_s + "\n") # aが1より大きかったらそのまま表示
  #to_s で数値を文字列へ変換
end

