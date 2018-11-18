#!/usr/koeki/bin/ruby
# -*- conding= utf-8 -*-

# p x = 1/3 # p 中身に何が入っているか見せる
# p x. to_f # to_f 小数値に変更
# p y = 1/3.0

# sime{INOUE Shotaro}% bc -l                                            [~/Ruby]
# 1/3
# .33333333333333333333
#quit

# 読まなくなる。コメントという。

mustle = mustle0 = 50         # 体重 mustle,初期値 mustle0

STDERR.print("名前:")
name = gets.chomp             # chomp 改行を取る
STDERR.print("現在の体重:")
mustle = mustle0 = gets.to_i  # to_i で整数値に変更
#p mustle

mustle1 = 80                  # 目標値 mustle1

month = 0                     # 月を数える month
ratio = 1.05                  # 体重を増やす割合 5% ratio

while mustle < mustle1
  printf("%4dヶ月目\t%6.1fキロ\n",month += 1, mustle *= ratio)
end

printf("名前: %s\n", name)
printf("目標値になるまで %dヶ月かかります\n", month)
