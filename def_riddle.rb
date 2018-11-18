#!/usr/koeki/bin/ruby
# coding: utf-8

def nazo(kazu)
  n = 3
  printf("%d 倍するよ\n", n)  # kazu 仮引数
  kazu *= n #一番最後の行が返る
 end

def nazo2(kazu2, j)
  j = 2
  printf("%d 足すよ\n" , j)
  kazu2 + j
end

k = 2
STDERR.printf("%d個の数字をいれてね\n", k)

i = 0

while i < k
  STDERR.printf("%dつめの数字:", i+1)
  suji = gets.to_i
  printf("%d です\n", suji2 = nazo(suji))
  STDERR.print("足す数:" )
  tasu = gets.to_i
  printf("%dです\n", nazo2(suji2,tasu))
  i += 1
end
