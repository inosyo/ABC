#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

fee = 14390
STDERR.printf("料金は%d円です\n",fee)
STDERR.print("お金を入れて下さい:")
money = gets.to_i

while true
  if fee =< money
    break
  elsif fee = money
    STDERR.print("お金を足して下さい:")
    money += gets.to_i
  end
end

change = money - fee
thousand = change / 1000
hundred = (change % 1000) / 100
ten = (change % 100) / 10

if fee == money
  STDERR.print("おつりはありません/n")
else
  STDERR.print("発券します/n")
  STDERR.printf("%d円のお釣りです\n",change)
  STDERR.printf("/t1000円札 * %d 枚\n", thousand)
  STDERR.printf("/t100円玉 * %d 個\n", hundred)
  STDERR.printf("/t10円玉 * %d 個\n", ten)
end

STDERR.print("ありがとうございました\n")
