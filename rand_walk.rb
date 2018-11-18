#!/usr/koeki/bin/ruby
# -*- coding:utf-8 -*-

srand

x = 10
i = 0

while i < 20
  y = 1 - 2 * rand(2)
  x += y
  print(" " * x)
  print("x\n")
  i+= 1
end
