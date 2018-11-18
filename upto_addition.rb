#!/usr/koeki/bin/ruby
#  -*- coding: utf-8  -*-

sum = 0
num0 = 1
num1 = 100

num0.upto(num1) do |number|
  sum += number
end

printf("こたえは %d\n", sum)

