#!/usr/koeki/bin/ruby
# -*- conding: utf-8 -*-

maker = []
name = []
cost = []

i = 0

while aaa = gets
  if /(\S+)\s+(\S+)\s+(\d+)/=~ aaa
    maker[i] = $1
    name[i] = $2
    cost[i] = $3.to_i
    i += 1
  end
end

for m in 0 .. name.length - 1
  printf("%d \n", m+1)
  printf("メーカー %s 名前 %s 金額 %d \n",
         maker[m],name[m],cost[m])
end
