#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

ken = Array.new     # 配列を意味する。
tosi = Array.new
zinkou = Array.new
nengou = Array.new
saigai = Array.new
tihou = Array.new
nendai = Array.new

open("aaa.csv","r:utf-8") do |nihon|
  while x = nihon.gets
    if/(\S+)\s+(\S+)\s+(\d+)\s+(\d+)\s+(\S+)\s+(\S+)\s+(\d+)/ =~ x
#      p x
      ken << $1
      tosi << $2
      zinkou << $3.to_i
      nengou << $4.to_i
      saigai << $5
      tihou << $6
      nengou << $7.to_i
    end
  end
end
#p tokusan
#STDERR.print("都道府県一覧\n")
#ken.each{|fuken|
#STDERR.printf("%d: %s\n",ken.rindex(fuken) + 1, fuken)
#}

while

  print("地方で調べたい?年代で調べたい?\n")
  STDERR.print("1:地方で調べる\n")
  STDERR.print("2:年代で調べる\n")
  print("数字を選択\n")
  dou1 = gets.to_i
  dou = gets.to_i

  if dou1 == 1
    print("地方だね!\n地方を選んでね!\n")

 sleep = (1)

    STDERR.print("1:北海道・東北地方\n")
    STDERR.print("2:関東地方\n")
    STDERR.print("3:中部地方\n")
    STDERR.print("4:近畿地方\n")
    STDERR.print("5:中国地方\n")
    STDERR.print("6:四国地方\n")
    STDERR.print("7:九州地方\n")
    print("数字を選択:")
    dou2 = gets.to_i

    if dou2 == 1
      dou = gets.to_i
      print("北海道・東北地方だね!何を知りたい?\n")

      sleep = (1)

 STDERR.print("1:北海道について\n")
      STDERR.print("2:青森県について\n")
      STDERR.print("3:岩手県について\n")
      STDERR.print("4:秋田県について\n")
      STDERR.print("5:宮城県について\n")
      STDERR.print("6:山形県について\n")
      STDERR.print("7:福島県について\n")
      print("数字を選択:")

    elsif dou2 = gets.to_i
      dou = gets.to_i
      print("関東地方だね!何を知りたい?\n")

      sleep = (1)

      STDERR.print("8:茨城県について\n")
      STDERR.print("9:栃木県について\n")
      STDERR.print("10:群馬県について\n")
 STDERR.print("11:埼玉県について\n")
      STDERR.print("12:千葉県について\n")
      STDERR.print("13:東京都について\n")
      STDERR.print("14:神奈川県について\n")
      print("数字を選択:")

    elsif dou2 = gets.to_i
      dou = gets.to_i
      print("中部地方だね!何を知りたい?\n")

      sleep = (1)

      STDERR.print("15:新潟県について\n")
      STDERR.print("16:富山県について\n")
      STDERR.print("17:石川県について\n")
      STDERR.print("18:福井県について\n")
      STDERR.print("19:山梨県について\n")
      STDERR.print("20:長野県について\n")
      STDERR.print("21:岐阜県について\n")
      STDERR.print("22:静岡県について\n")
      STDERR.print("23:愛知県について\n")
      print("数字を選択:")

    elsif dou2 = gets.to_i
      dou = gets.to_i
      print("近畿地方だね!何を知りたい?\n")

      sleep = (1)

      STDERR.print("24:三重県について\n")
      STDERR.print("25:滋賀県について\n")
      STDERR.print("26:奈良県について\n")
      STDERR.print("27:和歌山県について\n")
      STDERR.print("28:京都府について\n")
      STDERR.print("29:大阪府について\n")
      STDERR.print("30:兵庫県について\n")
  print("数字を選択:")

    elsif dou2 = gets.to_i
      dou = gets.to_i
      print("中国地方だね!何を知りたい?\n")

      sleep = (1)

      STDERR.print("31:岡山県について\n")
      STDERR.print("32:広島県について\n")
      STDERR.print("33:鳥取県について\n")
      STDERR.print("34:島根県について\n")
      STDERR.print("35:山口県について\n")
      print("数字を選択:")

    elsif dou2 = gets.to_i
      dou = gets.to_i
      print("四国地方だね!何を知りたい?\n")
  sleep = (1)

      STDERR.print("36:香川県について\n")
      STDERR.print("37:徳島県について\n")
      STDERR.print("38:愛知県について\n")
      STDERR.print("39:高知県について\n")
      print("数字を選択:")

    elsif dou2 = gets.to_i
      dou = gets.to_i
      print("九州地方だね!何を知りたい?\n")

      sleep = (1)

      STDERR.print("40:福岡県について\n")
      STDERR.print("41:佐賀県について\n")
      STDERR.print("42:長崎県について\n")
      STDERR.print("43:大分県について\n")
      STDERR.print("44:熊本県について\n")
      STDERR.print("45:宮崎県について\n")
      STDERR.print("46:鹿児島県について\n")
      STDERR.print("47:沖縄県について\n")
      print("数字を選択:")

    elsif dou1 == 2

      print("年代だね!\nどの年代で調べる?\n")
      STDERR.print("1:1500年代\n")
      STDERR.print("2:1600年代\n")
      STDERR.print("3:1700年代\n")
      STDERR.print("4:1800年代\n")
      STDERR.print("5:1900-1949年代\n")
      STDERR.print("6:1950-1999年代\n")
      STDERR.print("7:2000年代\n")
      STDERR.print("8:2010年代\n")
print("数字を選択\n")
    end
end

  #STDERR.print("番号入力:") # ktermに検索と表示
      dou = gets.to_i - 1  # 入力したものを持ってくる
      nendai = gets.to_i - 1
#p dou
#p ken[dou]
#p tosi[dou]
#p zinkou[dou]
#p saigai[dou]
    printf("\n県名:%s \n",ken[dou])
    printf("\n県庁所在地:%s \n",tosi[dou])
    printf("\n人口:約%d人 \n",zinkou[dou])
    printf("\n%d年に \n",nengou[dou])
    printf("\n%sがありました。\n",saigai[dou]) #検索した後の表示
end
