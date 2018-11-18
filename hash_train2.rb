#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

spell = Hash.new("登録されていません") # Hashをつくる # ( 既定値 )

open("shonaiexp.csv", "r:utf-8")do|tomaru|
  while eki =tomaru.gets
    if /(\S+)\s+(\S+)\s+(\d+[.]\d+)/=~eki # (\d+[.]\d+) 小数点を含むものを拾う
      #p eki
      #[$1,$2,$3]
      spell[$1]= $2
           #key #value
    end
  end
end

#p spell
#hash "{ "で始まり "}"で終わる ","で区切られる

STDERR.print("解答: \n")
#p spell.keys #keys の一覧を配列でとりだす
#p spell.values #valuse の一覧を配列でとりだす

spell.keys.each{|name|
  printf("%s のつづりは%s\n", name,spell[name])
}

# each データの中からそれぞれを取り出す

STDERR.print("駅名: ")
toi = gets.chomp #chomp 改行をとる
if spell.key?(toi) == true # key にあれば
  STDERR.printf("%sのつづりは%s\n",toi, spell[toi])
else
  STDERR.printf("%sのつづりは%s\n",toi, spell[toi])
  STDERR.printf("登録: ")
  newspell = gets.chomp #データの中に無いので入力して、新たに登録
  spell[toi] =newspell  # 入力されたものを新たにデータの中に加える
end

#p spell

for nihongo, eigo in spell
  printf("%s \t %s\n",nihongo,eigo)
end
