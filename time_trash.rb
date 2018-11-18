#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

today = Time.now #今の時間を知る now
#today = Time.local(2018,5,15)  #特定の日付を使いたいとき local(年,月,日)

weekno = today.strftime("%U").to_i #strftime("%U")週番号を知る
# p weekno
# b5 = weekno % 5
trashtype =  "ごみはだせない"

if today.wday == 1 || today.wday == 4 #月または木
  trashtype = "燃えるゴミの"
elsif today.wday == 2
  if weekno % 5 == 1
  trashtype = "埋め立てゴミの"
  elsif weekno % 5 == 0 || weekno % 5 == 3
  trashtype = "資源ゴミの"
  else
  trashtype = "ペットボトルの"
  end

elsif today.wday == 3
  if today.day < 15 && today.day > 7 #第二週になりうるすべての日付
    trashtype = "紙類資源の"         #8日から14日まで
  end
end


printf("本日は%s日です。\n", trashtype)
