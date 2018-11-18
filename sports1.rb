#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

sports = Array.new #国の名前
toshi = Array.new #開催した都市
nen = Array.new #開催年
sanka = Array.new #参加国数
gazo = Array.new #画像
m = 1

open("olympic.csv","r:utf-8") do |f| #olympic.csvを読みこむ変数
  while date = f.gets
    #f.getsはcsvを一行ずつ読み取りdateに取り込む
    if /(\S+)\s+(\S+)\s+(\d+)\s+(\d+)\s+(.+)/ =~date
      sports << $1
      toshi << $2
      nen << $3.to_i
      sanka << $4.to_i
      gazo << $5
      printf("%4d %s \n",m,$1,)
      m +=1
    end #if end
  end #while end
end #open do end

while true
  print("気になる開催国を選んでください!\n")
  print("どの国にしますか? qを入力で終了します\n")
  kaisai = gets.chomp!
  if kaisai == "q"
    break
  end
  kazu = kaisai.to_i - 1
  #p gazo
  if kazu > 0 && kazu < m - 1
    system "display " + gazo[kazu] + "&"
    printf("わかりました、『%s』ですね:\n",sports[kazu])
    printf("%sの%sで開催され%d年で参加国は%dヶ国です\n",
           sports[kazu] ,toshi[kazu] ,nen[kazu] ,sanka[kazu])
    sleep(3)
system "pkill display"
  end
  end
