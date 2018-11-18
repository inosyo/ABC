#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-


today = Time.now                                  #今の時刻を知る now

product = 100                                     #商品100円均
tax = 1.08                                        #消費税8%
sum = 0                                           #合計初期値

STDERR.print"商品数: "                            #品数に応じて金額、ポイントが変わるようにしたい

itemsnumber = 0                                   #商品数初期値
itemsnumber = gets.chomp.to_i


sum = product * itemsnumber                       #100円×商品数
pt = 0
ptaaa = 100
pt = sum / ptaaa

if today.wday == 0                                #もし日曜であれば
  pt *= 10
  today.wday == 0 && sum >= 1000
  sum *= 0.95                                     #日曜日かつ合計金額が1000円以上であれば5%引き
end
sum *= tax                                        #合計に消費税8%かける


STDERR.printf"%d点で",itemsnumber                 #品数

STDERR.printf"お会計%4d円になります。\n",sum      #合計金額

STDERR.printf"合計%dポイントたまりました。\n",pt  #合計ポイント
