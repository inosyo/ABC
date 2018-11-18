#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

hp1 = 300
hp2 = 750

def hantei1()
  if hp2 <= 0
    print"勇者は勝利した\n"
    retern 1
  else
    damege
  end
end

def damage()
  srand
  ddd = rand(10)+41
  printf("モンスターの攻撃 　%dのダメージを受けた\n",ddd)
  hp1 -= ddd
  hantei2
end


def hantei2(ddd)
  if hp1 <= 0
    print"勇者は倒された\n"
    return 1
  else
    return 0
  end
end
def waza()
  print"どうしますか?\n
 1.通常攻撃\n
 2. 必殺の剣\n
 3. 回復魔法\n"
  sentaku = gets.chomp!
  while true
    if sentaku == "1"
      srand
      aaa = rand(20)+100
      print"勇者は通常攻撃をした\n"
      sleep(1)
      printf("モンスターに%dのダメージを与えた\n",aaa)
      hp2 -= aaa
      hantei1
    elsif sentaku == "2"
      srand
     bbb = rand(20)+150
      print"勇者は必殺の剣を放った\n"
      sleep(1)
      printf("モンスターに%dのダメージを与えた\n",bbb)
      hp2 -= bbb
      hantei1
    elsif sentaku == "3"
      srand
      ccc = rand(20)+150
      print"勇者は回復魔法を唱えた\n"
      sleep(1)
      printf("勇者は%d回復した\n",ccc)
      hp1 += ccc
      hp2 += 0
      damege
    else
      print "再度入力して下さい"
      redo
    end
  end
end

def hantei1()
  if hp2 <= 0
    print"勇者は勝利した\n"
    retern 1
  else
    damege
  end
end

def damage()
  srand
  ddd = rand(10)+41
  printf("モンスターの攻撃 　%dのダメージを受けた\n",ddd)
  hp1 -= ddd
  hantei2
end


def hantei2(ddd)
  if hp1 <= 0
    print"勇者は倒された\n"
    return 1
  else
    return 0
  end
end

print"モンスターがあらわれた!\n"
waza

while true
  printf("\n    勇者の残りHP:%d\n",hp1)
  if hantei1(hp2)==1
    hantei2(hp1)==1
    exit(0)
  end
  sleep(1)
end
