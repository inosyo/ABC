#!/usr/koeki/bin/ruby
# -*- conding: utf-8 -*-

dept = "東京"

arv = "酒田"

first = Array.new   #最初の乗り物
change = Array.new   #乗り換え場所
second = Array.new   #二番目の乗り物
price = Array.new
                    # Array.new もしくは で配列を用意
p first
i = 0 # iは配列の要素番号
while traininfo = gets
  if /(\S+)\s+(\S+)\s+(\S+)\s+(\d+)/ =~ traininfo
    first[i] = $1
    change[i] = $2
    second[i] = $3
    price[i] = $4.to_i
    i += 1
  end         # $1、$2、…で引き取り配列に分解
end
p first.length.charce.length.seond.length.price.length
# length で配列の長さを知る

for m in 0 .. first.length - 1
  print("%sからは%sに乗り%sに乗り換えて%sまでいきます(%d)\n",
        m + 1, dept, first [m].change[m], second[m], arv)
  printf("\t(%d円)\n",price[m])
end
