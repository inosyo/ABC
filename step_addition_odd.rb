#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

sum = 0
num0 = 1     # 開始
num1 = 100   # 終了
del = 2    # きざみ

print "0"

num0.step(num1, del) do |odd|
  printf(" +%3d", odd)
  sum += odd
end
printf("=%d \n", sum)
