#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

print"縦の長さを入力してください\n"
tate = gets.chomp.to_i

print"横の長さを入力してください\n"
yoko = gets.chomp.to_i

print"高さを入力してください\n"
takasa = gets.chomp.to_i

goukei = tate + yoko + takasa

if goukei <= 60
  print"料金は600円になります\n"
elsif goukei <= 80
  print"料金は700円になります/n"

elsif goukei <= 100
  print"料金は800円になります/n"

elsif goukei <= 120
  print"料金は900円になります/n"

elsif goukei <= 140
  print"料金は1000円になります/n"

elsif goukei <= 160
  print"料金は1100円になります/n"
end
