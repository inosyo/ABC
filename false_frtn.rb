#!/usr/koeki/bin/ruby
# -*- coding:utf-8 -*-

STDERR.print("おなまえ: ")
name = gets.chomp!
i = 0
j = 0
m = 0
n = 0

for l in 0..name.length-1
  k = name.slice(l).ord.to_i % 16
  if k > 12
    i += 1
  elsif k > 8
    j += 1
  elsif k > 4
    m += 1
  else
    n += 1
  end
end

print("\n--- 診断結果 ---\n\n")
print("美: \t" + "*" * i + "\n")
print("愛: \t" + "*" * j + "\n")
print("芸: \t" + "*" * m + "\n")
print("楽: \t" + "*" * n + "\n")

