#!/usr/koeki/bin/ruby
#  -*- coding: utf-8  -*-
 
s0 = 10   # 開始
s1 = 1    # 終了

s0.downto(s1) do |sec|
  printf("%d 秒前 \n", sec)	      
  sleep(1)
end

print("発射します \n")
