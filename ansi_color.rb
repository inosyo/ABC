#!/usr/koeki/bin/ruby
# -*- coding:utf-8 -*-

i = 0
m = 29
n = 39

while i < 8
  printf("\e[%dm 文字の色が変わるよ\n", m += 1)
  i += 1
end

m += 1
j = 0

while j < 8
  printf("\e[%d;%dm 文字と背景の色が変わるよ\n", n += 1, m -= 1)
  j += 1
end

print("\e[0m")
