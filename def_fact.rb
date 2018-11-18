#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

def fact(n)
  if n < 0
    print("計算できません\n")
    exit 1  # 正常終了
  end
  printf("%d", n)
  if n > 1
    print(" * ")  # 掛け算する印
    fact(n-1) * n
  else
    print(" = ")
    return 1
  end
end

i = ARGV[0].to_i # ARGVはプログラム起動時に 入力されたものを持ってくる
                 # ARGV配列

printf("入力した数は %d です\n", i)
printf("%d! = ", i)
printf("%d \n", fact(i))

exit 0 # 正常終了
