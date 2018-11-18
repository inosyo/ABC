#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

quiz = ["問題その1", "問題その2", "問題その3"]
ans = ["答えその1", "答えその2", "答えその3"]

imax = quiz.length # 問題数

order = Array.new
i = 0
while i < imax
   order << i
   i += 1
end

order.shuffle! # shuffle を使い order に強制的に入れ替え(!)

m = 0
for k in order
  printf("第 %d 問:", m += 1)
  printf("%s\n", quiz[k])
  printf("%s\n", ans[k])
end
