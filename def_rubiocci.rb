#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

def cry(ct)
  ct.times do 
     print("ぴよ\t")
  end
  print("\n")
  sleep(0.5)
end

def message(usr, tame)
  STDERR.printf("%sを世話しよう: \n", usr)
  for line in 0 .. tame.length - 1
    STDERR.printf("[%d]\t%s\n", line + 1, tame[line])
  end
end

def fat(perday, exercise)
  extra =  4 * perday - exercise
  printf("%d日目\n",perday + 1)
  #  printf("体重増加分 %d\n", extra)
  return extra
end

def select(lines)
  # p lines
  words = Array.new
  i = 0
  open(lines, "r:utf-8") do |choice|    
    while line = choice.gets
      # p line
      if /(\S+)/ =~ line
        words[i] = $1
        i += 1
      end
    end
  end
  words
end

gamefile = "rubiocci.csv"
gamedef = select(gamefile)

printf("たまごを拾った。\n")

STDERR.printf("どんな名前にする?: ")
name = gets.chomp
if name == ""
   name = "るびおっち"
end
printf("%sという名前になった。\n",name)

happy = 1         # しあわせ度
weight = 1        # 体重
day = 0           # 育てた日付

printf("よく鳴くと大きくなるよ\n")


while true
  message(name, gamedef)
  ans = gets.to_i
  cry(ans)
  
  happy += day * ans
  # printf("しあわせ度 happy=%d\n", happy)
  weight += fat(day,ans)
  # printf("体重 weight=%d\n", weight)

  if happy > 4 || weight > 4
    break
  else
    day += 1
  end

end

STDERR.print("変化した!\n")

cry(weight)    # 最終段階の体重が鳴き声になる

printf("%sは", name)
if weight > 8
     print("ふくろう")
elsif weight <= 5
     print("すずめ")
else 
  print("からす")
end
print("みたいになりました\n")
