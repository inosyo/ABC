#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-


def bubblesort(array)
  for i in 0 .. array.length - 2
    for j in 0 .. array.length - 2 - i
      if array[j] > array[j + 1]
        c = array[j + 1]
        array[j + 1] = array[j]
        array[j] = c
      end
      p array, i
    end
  end
  array
end

#ary = [3, 2, 5, 4, 1, 6, 9, 7, 8]
ary = [4,5,3,2,1]

p bubblesort(ary)
