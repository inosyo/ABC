#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

match = 17

print "1から3本の範囲でマッチ棒を取ります。最後の1本を取った方の負け!\n"

while match > 0
  printf("あなたの番: マッチ棒が%d本あります\n", match)
  print "何本取りますか?(1..3): "
  toru = gets.chomp.to_i
  if toru < 1 || toru > 3 then
    print "1から3の範囲で取って下さい.\n"
    redo
  end
  match -= toru
  if match < 1 then
    print "最後の1本を取りました。あなたの負けです! やあい\n"
    break
  end
  printf("わたしの番: マッチ棒が%d本あります\n", match)
  com_toru = 3-toru+1
  printf("私は%d本取りました。\n", com_toru)
  match -= com_toru
  if match < 1 then
    print "最後の1本を取りました。わたしの負けです! くやちいい!!\n"
    break
  end
end
