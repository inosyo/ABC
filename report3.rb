#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

total = 0
number = 1

print"8回のレポートの合計得点を求めます。\n"

while true && number <= 8
  printf("%d回目のレポートの得点は？(exitで終了)\n", number)
  score = gets.chomp!.to_f
   total += score
    number += 1
  if score == "exit"
    number -= 1
    break

  elsif score < 0
    print"間違えているようですので再入力して下さい。\n"
    redo

  elsif score > 8
    print"得点に間違いはないですか？ yesかnoでお答え下さい。\n"
    while true
      answer = gets.chomp!
      if answer == yes
      total += score
      number += 1
      break
    elsif answer == no
      print"入力をキャンセルします。\n"
      break

    else
      print"yesかnoでお答え下さい。\n"

      redo
    end
    end
  end
end
average = total / number

printf("8回のレポートの合計は%4.1fで、平均点は%3.1fです。\n",total, average)
