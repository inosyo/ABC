#!/usr/koeki/bin/ruby
# -*- coding:utf-8 -*-

letter = ["k","o","e","k","i"]

STDERR.print("どれだけ早く打てるかな\t")
STDERR.printf("%s\n", letter)

start = Time.now.to_i

i = 0
while i < letter.length 
  printf("\v%s:", letter[i])
  input = gets.chomp
  if input == letter[i]
    stop = Time.now.to_i
    STDERR.print("\t正解\n") 
    i += 1
  end
end

printf("かかった時間 %d 杪!\n", stop - start)
