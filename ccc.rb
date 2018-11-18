#!/usr/koeki/bin/ruby
# -*- conding:utf-8 -*-

print("どっちにすすむ?\n")
erabu = gets.to_i

if erabu == 1
  print("1、上に進む 2、下に進む\n")
  print("どっちにすすむ?\n")
  sentaku = gets.to_i

  if sentaku == 1
    print("1、のぼる 2、もぐる\n")
    print("どっちにする?\n")
    mottekuru = gets.to_i

    if mottekuru == 1
      print("ゴール\n")

    elsif mottekuru == 2
      print("最初に戻る\n")

    end
  elsif sentaku == 2
    print("NG\n")
  end

elsif erabu == 2
  print("NG\n")
end
printf("%s\n",test[mottekuru])
