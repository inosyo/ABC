#!/usr/koeki/bin/ruby
#-*- coding:utf-8 -*-

puts"好きな数字を入力するとあなたがたけのこの里派かきのこの山派かが表示されるよ！"

while true
  print"\n1から10ですきな数字を入力してね(終了はq): "
  line = STDIN.gets.chomp!
  2
  if line =="q" then
    puts"おしまーい!きのこの山買ってね!!"
    break
  end
  
  base_price = line.to_i
  
  if base_price == line.to_i >=1 || line.to_i <= 10
    printf("%dだね!そんな君はきのこの山!!\n",  base_price)
  elsif
    printf"1から10って言ってんじゃん!たけのこでも食ってろ!"
    puts"" #空白行
    redo
  end  
end

