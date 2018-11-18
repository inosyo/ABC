#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-
p = p0 = 50         # 貯金額 p,初期値 p0

STDERR.print("名前:")
name = gets.chomp             # chomp 改行を取る
STDERR.print("あなたの貯金額を教えて下さい:")
p = p0 = gets.to_i  # to_i で整数値に変更


p1 = 100000                  # 目標値 p1

month = 0                     # 月を数える month
ratio = 1.5                  # 貯金を増やす割合 50% ratio

while p < p1
  printf("%4dヶ月目\t%6.1f円\n",month += 1, p *= ratio)
end

printf("名前: %s\n", name)
printf("目標値になるまで %dヶ月かかります\n", month)
