#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

spell = Hash.new("登録されていません") # Hashをつくる # ( 既定値 )

open("hash_c117033.csv", "r:utf-8")do|tomaru| # ファイルの読みこみ
  while eki =tomaru.gets
    if /(\d+)\s+(\S+)/=~eki    # 数値はd文字はS
      #p eki
      #[$1,$2]
      spell[$1]= $2            # 一行目はkey
           #key #value         # 二行目はvalue に値する
    end
  end
end

STDERR.print("1位〜20位までのランキングで人気の世界遺産を表示するよ\n
何位が気になる?:")
toi = gets.chomp

if spell.key?(toi) == true # key 該当するものがあれば
  STDERR.printf("%d位は%sだよ!!\n",toi, spell[toi])
else
  print("1〜20までの数字を入力してね")
end




