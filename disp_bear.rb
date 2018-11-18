#!/usr/koeki/bin/ruby
# coding: utf-8


STDERR.print("くまさんが現れた！どうする？\n")
STDERR.print("a: 逃げる \t b: 鉄砲で攻撃 \t c: 話しかける\n")

system 'display bear.png&'

answer = gets.chomp!

if answer == "a"
    print("逃げたが話しかけられた！\n")
elsif answer == "b"
    print("鉄砲は当たらなかった！\n")  
elsif answer == "c"
    print("くまさんはイヤリングを返してくれた！\n")
    system 'banner NEXT STAGE'
end

system 'pkill display'
