#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

#準備
#参考1:http://roy.e.koeki-u.ac.jp/~hagihara/kisopro1/exb/curses.html
#参考2:http://seeku.hateblo.jp/entry/2013/06/28/222410
#参考3:https://www.kushiro-ct.ac.jp/yanagawa/ex-2017/2-game/doc/curses.html

require 'curses'
include Curses

start_color()
init_pair(1,COLOR_RED,COLOR_WHITE)
init_pair(2,COLOR_BLACK,COLOR_WHITE)
init_pair(3,COLOR_YELLOW,COLOR_BLACK)

init_screen
cbreak
noecho

win = 0

begin

while true
  i = 0
mark = ["●","■","◆","▲"] #●と◆は赤、■と▲は黒
number = [" A"," 2"," 3"," 4"," 5"," 6"," 7"," 8"," 9","10"," J"," Q"," K"]
kesu = "                                                                   "
chkesu = "      "

ach = 0
bch = 0
cch = 0
dch = 0
ech = 0
dlach = 0
dlbch = 0
dlcch = 0
dldch = 0
dlech = 0

handnum = []
handmar = []
dlnum = []
dlmar = []
l = 0
m = 0
n = []
o = 0
p = 0

point = 0
  dlpoint = 0

wintx = win.to_s

  #カードを配る
  message = " ゲームを始めるよ。"
  addstr(message)
  addstr(" 現在")
  addstr(wintx)
  addstr("連勝中!\n")
  tate = 10
  yoko = 0
  setpos(tate,yoko)
  addstr("━━━━A━━━━━━B━━━━━━C━━━━━━D━━━━━━E━━━━━")
  while true
    if i == 10
      break
    end
    srand
    a = rand(4) #1枚目のマーク
    b = rand(4) #2枚目のマーク
    c = rand(4) #3枚目のマーク
    d = rand(4) #4枚目のマーク
    e = rand(4) #5枚目のマーク
    v = rand(13) #1枚目の数字
    w = rand(13) #2枚目の数字
    x = rand(13) #3枚目の数字
    y = rand(13) #4枚目の数字
    z = rand(13) #5枚目の数字
    #ディーラー(dealer)のカード
    dla = rand(4)
    dlb = rand(4)
    dlc = rand(4)
    dld = rand(4)
    dle = rand(4)
    dlv = rand(13)
    dlw = rand(13)
    dlx = rand(13)
    dly = rand(13)
    dlz = rand(13)
    if a == 0 || a == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    if i == 0
      refresh
      sleep(0.5)
    end
    tate = 12
    yoko = 5
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[a])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[v])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
    if b == 0 || b == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    if i == 0
      refresh
      sleep(0.5)
    end
    tate = 12
    yoko = 18
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[b])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[w])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
    if c == 0 || c == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    if i == 0
      refresh
      sleep(0.5)
    end
    tate = 12
    yoko = 31
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[c])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[x])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
    if d == 0 || d == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    if i == 0
      refresh
      sleep(0.5)
    end
    tate = 12
    yoko = 44
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[d])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[y])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
    if e == 0 || e == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    if i == 0
      refresh
      sleep(0.5)
    end
    tate = 12
    yoko = 57
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[e])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[z])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
    if i == 0
      refresh
      sleep(0.5)
    end
    while ((a == b)&&(v == w)) || ((a == c) && (v == x)) || ((a == d)&&(v == y)) || ((a == e)&&(v == z)) || ((a == dla)&&(v == dlv)) || ((a ==dlb)&&(v == dlw)) || ((a == dlc)&&(v == dlx)) || ((a == dld)&&(v == dly)) || ((a == dle)&&(v == dlz)) || ((b == c)&&(w == x)) || ((b == d)&&(w == y)) || ((b == e)&&(w == z)) || ((b == dla)&&(w == dlv)) || ((b ==dlb)&&(w == dlw)) || ((b == dlc)&&(w == dlx)) || ((b == dld)&&(w == dly)) || ((b == dle)&&(w == dlz)) || ((c == d)&&(x == y)) || ((c == e)&&(x == z)) || ((c == dla)&&(x == dlv)) || ((c ==dlb)&&(x == dlw)) || ((c == dlc)&&(x == dlx)) || ((c == dld)&&(x == dly)) || ((c == dle)&&(x == dlz)) || ((d == e)&&(y == z)) || ((d == dla)&&(y == dlv)) || ((d ==dlb)&&(y == dlw)) || ((d == dlc)&&(y == dlx)) || ((d == dld)&&(y == dly)) || ((d == dle)&&(y == dlz)) || ((e == dla)&&(z == dlv)) || ((e ==dlb)&&(z == dlw)) || ((e == dlc)&&(z == dlx)) || ((e == dld)&&(z == dly)) || ((e == dle)&&(z == dlz)) || ((dla ==dlb)&&(dlv == dlw)) || ((dla == dlc)&&(dlv == dlx)) || ((dla == dld)&&(dlv == dly)) || ((dla == dle)&&(dlv == dlz)) || ((dlb == dlc)&&(dlw == dlx)) || ((dlb == dld)&&(dlw == dly)) || ((dlb == dle)&&(dlw == dlz)) || ((dlc == dld)&&(dlx == dly)) || ((dlc == dle)&&(dlx == dlz)) || ((dld == dle)&&(dly == dlz))
      srand
      a = rand(4)
      b = rand(4)
      c = rand(4)
      d = rand(4)
      e = rand(4)
      v = rand(13)
      w = rand(13)
      x = rand(13)
      y = rand(13)
      z = rand(13)
      dla = rand(4)
      dlb = rand(4)
      dlc = rand(4)
      dld = rand(4)
      dle = rand(4)
      dlv = rand(13)
      dlw = rand(13)
      dlx = rand(13)
      dly = rand(13)
      dlz = rand(13)
    if a == 0 || a == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    tate = 12
    yoko = 5
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[a])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[v])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
    if b == 0 || b == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    tate = 12
    yoko = 18
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[b])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[w])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
    if c == 0 || c == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    tate = 12
    yoko = 31
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[c])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[x])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
    if d == 0 || d == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    tate = 12
    yoko = 44
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[d])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[y])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
      if e == 0 || e == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    tate = 12
    yoko = 57
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[e])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[z])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
      refresh
    end
    i += 1
  end
  #ディーラーのカード表示(形だけ)
  setpos(3,5)
  addstr("      ")
  setpos(4,5)
  addstr("      ")
  setpos(5,5)
  addstr("      ")
  setpos(6,5)
  addstr("      ")
  setpos(7,5)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  setpos(3,18)
  addstr("      ")
  setpos(4,18)
  addstr("      ")
  setpos(5,18)
  addstr("      ")
  setpos(6,18)
  addstr("      ")
  setpos(7,18)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  setpos(3,31)
  addstr("      ")
  setpos(4,31)
  addstr("      ")
  setpos(5,31)
  addstr("      ")
  setpos(6,31)
  addstr("      ")
  setpos(7,31)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  setpos(3,44)
  addstr("      ")
  setpos(4,44)
  addstr("      ")
  setpos(5,44)
  addstr("      ")
  setpos(6,44)
  addstr("      ")
  setpos(7,44)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  setpos(3,57)
  addstr("      ")
  setpos(4,57)
  addstr("      ")
  setpos(5,57)
  addstr("      ")
  setpos(6,57)
  addstr("      ")
  setpos(7,57)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  attrset(0)
  addstr(kesu)
  setpos(0,0)
  refresh
  message = " どれを交換する?(A〜E(小文字)で選択、交換開始は1を入力)"
  addstr(message)
  refresh
  #カード交換
  attrset(Curses.color_pair(3))
  setpos(18,6)
  addstr("KEEP")
  refresh
  sleep(0.1)
  attrset(Curses.color_pair(3))
  setpos(18,19)
  addstr("KEEP")
  refresh
  sleep(0.1)
  attrset(Curses.color_pair(3))
  setpos(18,32)
  addstr("KEEP")
  refresh
  sleep(0.1)
  attrset(Curses.color_pair(3))
  setpos(18,45)
  addstr("KEEP")
  refresh
  sleep(0.1)
  attrset(Curses.color_pair(3))
  setpos(18,58)
  addstr("KEEP")
  refresh
  attrset(0)
  while true
    setpos(0,0)
    user = getch
    if user == "1"
      break
    end
    if user == "a"
      if ach == 0 #AがKEEPのとき
        attrset(Curses.color_pair(3) | A_REVERSE)
        setpos(18,5)
        addstr("CHANGE")
        sleep(0.1)
        refresh
        attrset(0)
        ach = 1
      else #AがCHANGEのとき
        setpos(18,5)
        addstr(chkesu)
        refresh
        attrset(Curses.color_pair(3))
        setpos(18,6)
        addstr("KEEP")
        refresh
        attrset(0)
        ach = 0
      end
    end
    if user == "b"
      if bch == 0 #BがKEEPのとき
        attrset(Curses.color_pair(3) | A_REVERSE)
        setpos(18,18)
        addstr("CHANGE")
        sleep(0.1)
        refresh
        attrset(0)
        bch = 1
      else #BがCHANGEのとき
        setpos(18,18)
        addstr(chkesu)
        refresh
        attrset(Curses.color_pair(3))
        setpos(18,19)
        addstr("KEEP")
        refresh
        attrset(0)
        bch = 0
      end
    end
    if user == "c"
      if cch == 0 #CがKEEPのとき
        attrset(Curses.color_pair(3) | A_REVERSE)
        setpos(18,31)
        addstr("CHANGE")
        sleep(0.1)
        refresh
        attrset(0)
        cch = 1
      else #CがCHANGEのとき
        setpos(18,31)
        addstr(chkesu)
        refresh
        attrset(Curses.color_pair(3))
        setpos(18,32)
        addstr("KEEP")
        refresh
        attrset(0)
        cch = 0
      end
    end
    if user == "d"
      if dch == 0 #DがKEEPのとき
        attrset(Curses.color_pair(3) | A_REVERSE)
        setpos(18,44)
        addstr("CHANGE")
        sleep(0.1)
        refresh
        attrset(0)
        dch = 1
      else #DがCHANGEのとき
        setpos(18,44)
        addstr(chkesu)
        refresh
        attrset(Curses.color_pair(3))
        setpos(18,45)
        addstr("KEEP")
        refresh
        attrset(0)
        dch = 0
      end
    end
     if user == "e"
      if ech == 0 #EがKEEPのとき
        attrset(Curses.color_pair(3) | A_REVERSE)
        setpos(18,57)
        addstr("CHANGE")
        sleep(0.1)
        refresh
        attrset(0)
        ech = 1
      else #EがCHANGEのとき
        setpos(18,57)
        addstr(chkesu)
        refresh
        attrset(Curses.color_pair(3))
        setpos(18,58)
        addstr("KEEP")
        refresh
        attrset(0)
        ech = 0
      end
    end
    refresh
  end
  setpos(0,0)
  refresh
  attrset(0)
  addstr(kesu)
  setpos(0,0)
  refresh
  message = " 交換するよ。"
  addstr(message)
  refresh
  #?ch = 1 のものを交換する
  if ach == 1  #Aのとき
    a = rand(4)
    v = rand(13)
    while ((a == b)&&(v == w)) || ((a == c) && (v == x)) || ((a == d)&&(v == y)) || ((a == e)&&(v == z)) || ((a == dla)&&(v == dlv)) || ((a ==dlb)&&(v == dlw)) || ((a == dlc)&&(v == dlx)) || ((a == dld)&&(v == dly)) || ((a == dle)&&(v == dlz))
      a = rand(4)
      v = rand(13)
    end
    setpos(12,5)
    addstr("      ")
    setpos(13,5)
    addstr("      ")
    setpos(14,5)
    addstr("      ")
    setpos(15,5)
    addstr("      ")
    setpos(16,5)
    addstr("      ")
    sleep(0.5)
    setpos(0,0)
    refresh
    if a == 0 || a == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    tate = 12
    yoko = 5
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[a])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[v])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
  end
  if bch == 1  #Bのとき
    b = rand(4)
    w = rand(13)
    while ((b == a)&&(w == v)) || ((b == c) && (w == x)) || ((b == d)&&(w == y)) || ((b == e)&&(w == z)) || ((b == dla)&&(w == dlv)) || ((b ==dlb)&&(w == dlw)) || ((b == dlc)&&(w == dlx)) || ((b == dld)&&(w == dly)) || ((b == dle)&&(w == dlz))
      b = rand(4)
      w = rand(13)
    end
    setpos(12,18)
    addstr("      ")
    setpos(13,18)
    addstr("      ")
    setpos(14,18)
    addstr("      ")
    setpos(15,18)
    addstr("      ")
    setpos(16,18)
    addstr("      ")
    sleep(0.5)
    setpos(0,0)
    refresh
    if b == 0 || b == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    tate = 12
    yoko = 18
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[b])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[w])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
  end
  if cch == 1  #Cのとき
    c = rand(4)
    x = rand(13)
    while ((c == a)&&(x == v)) || ((c == b) && (x == w)) || ((c == d)&&(x == y)) || ((c == e)&&(x == z)) || ((c == dla)&&(x == dlv)) || ((c ==dlb)&&(x == dlw)) || ((c == dlc)&&(x == dlx)) || ((c == dld)&&(x == dly)) || ((c == dle)&&(x == dlz))
      c = rand(4)
      x = rand(13)
    end
    setpos(12,31)
    addstr("      ")
    setpos(13,31)
    addstr("      ")
    setpos(14,31)
    addstr("      ")
    setpos(15,31)
    addstr("      ")
    setpos(16,31)
    addstr("      ")
    sleep(0.5)
    setpos(0,0)
    refresh
    if c == 0 || c == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    tate = 12
    yoko = 31
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[c])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[x])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
  end
  if dch == 1  #Dのとき
    d = rand(4)
    y = rand(13)
    while ((d == a)&&(y == v)) || ((d == b) && (y == w)) || ((d == c)&&(y == x)) || ((d == e)&&(y == z)) || ((d == dla)&&(y == dlv)) || ((d ==dlb)&&(y == dlw)) || ((d == dlc)&&(y == dlx)) || ((d == dld)&&(y == dly)) || ((d == dle)&&(y == dlz))
      d = rand(4)
      y = rand(13)
    end
    setpos(12,44)
    addstr("      ")
    setpos(13,44)
    addstr("      ")
    setpos(14,44)
    addstr("      ")
    setpos(15,44)
    addstr("      ")
    setpos(16,44)
    addstr("      ")
    sleep(0.5)
    setpos(0,0)
    refresh
    if d == 0 || d == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    tate = 12
    yoko = 44
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[d])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[y])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
  end
  if ech == 1  #Eのとき
    e = rand(4)
    z = rand(13)
    while ((e == a)&&(z == v)) || ((e == b) && (z == w)) || ((e == c)&&(z == x)) || ((e == d)&&(z == y)) || ((e == dla)&&(z == dlv)) || ((e ==dlb)&&(z == dlw)) || ((e == dlc)&&(z == dlx)) || ((e == dld)&&(z == dly)) || ((e == dle)&&(z == dlz))
      e = rand(4)
      z = rand(13)
    end
    setpos(12,57)
    addstr("      ")
    setpos(13,57)
    addstr("      ")
    setpos(14,57)
    addstr("      ")
    setpos(15,57)
    addstr("      ")
    setpos(16,57)
    addstr("      ")
    sleep(0.5)
    setpos(0,0)
    refresh
    if e == 0 || e == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    tate = 12
    yoko = 57
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[e])
    addstr("  ")
    setpos(0,0)
    if i > 1
      refresh
    end
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[z])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
  end
  #ディーラーのチェンジ ※先と逆に、?ch = 0なら交換
  setpos(0,0)
  refresh
  attrset(0)
  addstr(kesu)
  setpos(0,0)
  refresh
  message = " 次は僕が交換するよ"
  addstr(message)
  refresh
  sleep(2)
if dlv == dlw #AとBが同じ数
  dlach = 1
  dlbch = 1
end
if dlv == dlx #AとCが同じ数
  dlach = 1
  dlcch = 1
end
if dlv == dly #AとDが同じ数
  dlach = 1
  dldch = 1
end
if dlv == dlz #AとEが同じ数
  dlach = 1
  dlech = 1
end
if dlw == dlx #BとCが同じ数
  dlbch = 1
  dlcch = 1
end
if dlw == dly #BとDが同じ数
  dlbch = 1
  dldch = 1
end
if dlw == dlz #BとEが同じ数
  dlbch = 1
  dlech = 1
end
if dlx == dly #CとDが同じ数
  dlcch = 1
  dldch = 1
end
if dlx == dlz #CとEが同じ数
  dlcch = 1
  dlech = 1
end
if dly == dlz #DとEが同じ数
  dldch = 1
  dlech = 1
end
if dlach == 0  #Aのとき
  dla = rand(4)
  dlv = rand(13)
  while ((dla == b)&&(dlv == w)) || ((dla == c)&&(dlv == x)) || ((dla == d)&&(dlv == y)) || ((dla == e)&&(dlv == z)) || ((dla == a)&&(dlv == v)) || ((dla ==dlb)&&(dlv == dlw)) || ((dla == dlc)&&(dlv == dlx)) || ((dla == dld)&&(dlv == dly)) || ((dla == dle)&&(dlv == dlz))
    dla = rand(4)
    dlv = rand(13)
  end
end
if dlbch == 0  #Bのとき
  dlb = rand(4)
  dlw = rand(13)
  while ((dlb == a)&&(dlw == v)) || ((dlb == c)&&(dlw == x)) || ((dlb == d)&&(dlw == y)) || ((dlb == e)&&(dlw == z)) || ((dlb == dla)&&(dlw == dlv)) || ((dlb ==b)&&(dlw == w)) || ((dlb == dlc)&&(dlw == dlx)) || ((dlb == dld)&&(dlw == dly)) || ((dlb == dle)&&(dlw == dlz))
    dlb = rand(4)
    dlw = rand(13)
  end
end
if dlcch == 0  #Cのとき
  dlc = rand(4)
  dlx = rand(13)
  while ((dlc == a)&&(dlx == v)) || ((dlc == b)&&(dlx == w)) || ((dlc == d)&&(dlx == y)) || ((dlc == e)&&(dlx == z)) || ((dlc == dla)&&(dlx == dlv)) || ((dlc ==dlb)&&(dlx == dlw)) || ((dlc == c)&&(dlx == x)) || ((dlc == dld)&&(dlx == dly)) || ((dlc == dle)&&(dlx == dlz))
    dlc = rand(4)
    dlx = rand(13)
  end
end
if dldch == 0  #Dのとき
  dld = rand(4)
  dly = rand(13)
  while ((dld == a)&&(dly == v)) || ((dld == b)&&(dly == w)) || ((dld == c)&&(dly == x)) || ((dld == e)&&(dly == z)) || ((dld == dla)&&(dly == dlv)) || ((dld ==dlb)&&(dly == dlw)) || ((dld == dlc)&&(dly == dlx)) || ((dld == d)&&(dly == y)) || ((dld == dle)&&(dly == dlz))
    dld = rand(4)
    dly = rand(13)
  end
end
if dlech == 0  #Eのとき
  dle = rand(4)
  dlz = rand(13)
  while ((dle == a)&&(dlz == v)) || ((dle == b) && (dlz == w)) || ((dle == c)&&(dlz == x)) || ((dle == d)&&(dlz == y)) || ((dle == dla)&&(dlz == dlv)) || ((dle ==dlb)&&(dlz == dlw)) || ((dle == dlc)&&(dlz == dlx)) || ((dle == dld)&&(dlz == dly)) || ((dle == e)&&(dlz == z))
    dle = rand(4)
    dlz = rand(13)
  end
end
setpos(18,0)
refresh
attrset(0)
addstr(kesu)
refresh
setpos(0,0)
refresh
attrset(0)
addstr(kesu)
refresh
#並び変え

if a == b && b == c && c == d && d == e  #フラッシュのときは小さい順に並べる
nowmar = [a,b,c,d,e]
nownum = [v,w,x,y,z]
  while m < 5
    n = nownum.sort
    o = n.shift
    p = nownum.index(o)
    handmar.push(nowmar[p])
    handnum.push(nownum[p])
    nownum[p] = 100
    m += 1
  end
end
#そうでないときは同じ値を前に
#ワンペア、ツーペア、スリーカード、フォーカードを調べる
#フルハウスは、スリーカード+ワンペア=スリーカードが出てから並び変えれば◯
pair = 100
l = 0
if v == w  #AとB
  pair = 0
end
if v == x  #AとC
  pair = 1
end
if v == y  #AとD
  pair = 2
end
if v == z  #AとE
  pair = 3
end
if w == x  #BとC
  pair = 4
end
if w == y  #BとD
  pair = 5
end
if w == z  #BとE
  pair = 6
end
if x == y  #CとD
  pair = 7
end
if x == z  #CとE
  pair = 8
end
if y == z  #DとE
  pair = 9
end
if v == w && w == x  #AとBとC
  pair = 10
end
if v == w && w == y  #AとBとD
  pair = 11
end
if v == w && w == z  #AとBとE
  pair = 12
end
if v == x && x == y  #AとCとD
  pair = 13
end
if v == x && x == z  #AとCとE
  pair = 14
end
if v == y && y == z  #AとDとE
  pair = 15
end
if w == x && x == y  #BとCとD
  pair = 16
end
if w == x && x == z  #BとCとE
  pair = 17
end
if w == y && y == z  #BとDとE
  pair = 18
end
if x == y && y == z  #CとDとE
  pair = 19
end
if v == w && w == x && x == y  #AとBとCとD
  pair = 20
end
if v == w && w == x && x == z  #AとBとCとE
  pair = 21
end
if v == w && w == y && y == z  #AとBとDとE
  pair = 22
end
if w == x && x == y && y == z  #BとCとDとE
  pair = 23
end
if v == w && w == y && y == z
  pair = 24
end
#ab=0 ac=1 ad=2 ae=3 bc=4 bd=5 be=6 cd=7 ce=8 de=9
#abc=10 abd=11 abe=12 acd=13 ace=14 ade=15 bcd=16 bce=17 bde=18 cde=19
#abcd=20 abce=21 acde=22 bcde=23   abde=24
if pair == 0
  handmar.push(a,b)
  handnum.push(v,w)
  v = 100
  w = 100
  l = 2
end
if pair == 1
  handmar.push(a,c)
  handnum.push(v,x)
  v = 100
  x = 100
  l = 2
end
if pair == 2
  handmar.push(a,d)
  handnum.push(v,y)
  v = 100
  y = 100
  l = 2
end
if pair == 3
  handmar.push(a,e)
  handnum.push(v,z)
  v = 100
  z = 100
  l = 2
end
if pair == 4
  handmar.push(b,c)
  handnum.push(w,x)
  w = 100
  x = 100
  l = 2
end
if pair == 5
  handmar.push(b,d)
  handnum.push(w,y)
  w = 100
  y = 100
  l = 2
end
if pair == 6
  handmar.push(b,e)
  handnum.push(w,z)
  w = 100
  z = 100
  l = 2
end
if pair == 7
  handmar.push(c,d)
  handnum.push(x,y)
  x = 100
  y = 100
  l = 2
end
if pair == 8
  handmar.push(c,e)
  handnum.push(x,z)
  x = 100
  z = 100
  l = 2
end
if pair == 9
  handmar.push(d,e)
  handnum.push(y,z)
  y = 100
  z = 100
  l = 2
end
if pair == 10
  handmar.push(a,b,c)
  handnum.push(v,w,x)
  v = 100
  w = 100
  x = 100
  l = 3
end
if pair == 11
  handmar.push(a,b,d)
  handnum.push(v,w,y)
  v = 100
  w = 100
  y = 100
  l = 3
end
if pair == 12
  handmar.push(a,b,e)
  handnum.push(v,w,z)
  v = 100
  w = 100
  z = 100
  l = 3
end
if pair == 13
  handmar.push(a,c,d)
  handnum.push(v,x,y)
  v = 100
  x = 100
  y = 100
  l = 3
end
if pair == 14
  handmar.push(a,c,e)
  handnum.push(v,x,z)
  v = 100
  x = 100
  z = 100
  l = 3
end
if pair == 15
  handmar.push(a,d,e)
  handnum.push(v,y,z)
  v = 100
  y = 100
  z = 100
  l = 3
end
if pair == 16
  handmar.push(b,c,d)
  handnum.push(w,x,y)
  w = 100
  x = 100
  y = 100
  l = 3
end
if pair == 17
  handmar.push(b,c,e)
  handnum.push(w,x,z)
  w = 100
  x = 100
  z = 100
  l = 3
end
if pair == 18
  handmar.push(b,d,e)
  handnum.push(w,y,z)
  w = 100
  y = 100
  z = 100
  l = 3
end
if pair == 19
  handmar.push(c,d,e)
  handnum.push(x,y,z)
  x = 100
  y = 100
  z = 100
  l = 3
end
if pair == 20
  handmar.push(a,b,c,d)
  handnum.push(v,w,x,y)
  v = 100
  w = 100
  x = 100
  y = 100
  l = 4
end
if pair == 21
  handmar.push(a,b,c,e)
  handnum.push(v,w,x,z)
  v = 100
  w = 100
  x = 100
  z = 100
  l = 4
end
if pair == 22
  handmar.push(a,c,d,e)
  handnum.push(v,x,y,z)
  v = 100
  x = 100
  y = 100
  z = 100
  l = 4
end
if pair == 23
  handmar.push(b,c,d,e)
  handnum.push(w,x,y,z)
  w = 100
  x = 100
  y = 100
  z = 100
  l = 4
end
if pair == 24
  handmar.push(a,b,d,e)
  handnum.push(v,w,y,z)
  v = 100
  w = 100
  y = 100
  z = 100
  l = 4
end
nowmar = [a,b,c,d,e]
nownum = [v,w,x,y,z]
while m < 5 - l
  n = nownum.sort
  o = n.shift
  p = nownum.index(o)
  handmar.push(nowmar[p])
  handnum.push(nownum[p])
  nownum[p] = 100
  m += 1
end

#ディーラーもだぁぁぁぁぁぁああぁぁぁあぁ
pair = 100
l = 0
if dla == dlb && dlb == dlc && dlc == dld && dld == dle  #フラッシュのときは小さい順に並べる
  nowdlmar = [dla,dlb,dlc,dld,dle]
  nowdlnum = [dlv,dlw,dlx,dly,dlz]
  m = 0
  n = []
  o = 0
  p = 0
  while m < 5
    n = nowdlnum.sort
    o = n.shift
    p = nowdlnum.index(o)
    dlmar.push(nowdlmar[p])
    dlnum.push(nowdlnum[p])
    nowdlnum[p] = 100
    m += 1
  end
end
l = 0
if dlv == dlw  #AとB
  pair = 0
end
if dlv == dlx  #AとC
  pair = 1
end
if dlv == dly  #AとD
  pair = 2
end
if dlv == dlz  #AとE
  pair = 3
end
if dlw == dlx  #BとC
  pair = 4
end
if dlw == dly  #BとD
  pair = 5
end
if dlw == dlz  #BとE
  pair = 6
end
if dlx == dly  #CとD
  pair = 7
end
if dlx == dlz  #CとE
  pair = 8
end
if dly == dlz  #DとE
  pair = 9
end
if dlv == dlw && dlw == dlx  #AとBとC
  pair = 10
end
if dlv == dlw && dlw == dly  #AとBとD
  pair = 11
end
if dlv == dlw && dlw == dlz  #AとBとE
  pair = 12
end
if dlv == dlx && dlx == dly  #AとCとD
  pair = 13
end
if dlv == dlx && dlx == dlz  #AとCとE
  pair = 14
end
if dlv == dly && dly == dlz  #AとDとE
  pair = 15
end
if dlw == dlx && dlx == dly  #BとCとD
  pair = 16
end
if dlw == dlx && dlx == dlz  #BとCとE
  pair = 17
end
if dlw == dly && dly == dlz  #BとDとE
  pair = 18
end
if dlx == dly && dly == dlz  #CとDとE
  pair = 19
end
if dlv == dlw && dlw == dlx && dlx == dly  #AとBとCとD
  pair = 20
end
if dlv == dlw && dlw == dlx && dlx == dlz  #AとBとCとE
  pair = 21
end
if dlv == dlw && dlw == dly && dly == dlz  #AとBとDとE
  pair = 22
end
if dlw == dlx && dlx == dly && dly == dlz  #BとCとDとE
  pair = 23
end
if dlv == dlw && dlw == dly && dly == dlz
  pair = 24
end



#ab=0 ac=1 ad=2 ae=3 bc=4 bd=5 be=6 cd=7 ce=8 de=9
#abc=10 abd=11 abe=12 acd=13 ace=14 ade=15 bcd=16 bce=17 bde=18 cde=19
#abcd=20 abce=21 acde=22 bcde=23
l = 0
if pair == 0
  dlmar.push(dla,dlb)
  dlnum.push(dlv,dlw)
  dlv = 100
  dlw = 100
  l = 2
end
if pair == 1
  dlmar.push(dla,dlc)
  dlnum.push(dlv,dlx)
  dlv = 100
  dlx = 100
  l = 2
end
if pair == 2
  dlmar.push(dla,dld)
  dlnum.push(dlv,dly)
  dlv = 100
  dly = 100
  l = 2
end
if pair == 3
  dlmar.push(dla,dle)
  dlnum.push(dlv,dlz)
  dlv = 100
  dlz = 100
  l = 2
end
if pair == 4
  dlmar.push(dlb,dlc)
  dlnum.push(dlw,dlx)
  dlw = 100
  dlx = 100
  l = 2
end
if pair == 5
  dlmar.push(dlb,dld)
  dlnum.push(dlw,dly)
  dlw = 100
  dly = 100
  l = 2
end
if pair == 6
  dlmar.push(dlb,dle)
  dlnum.push(dlw,dlz)
  dlw = 100
  dlz = 100
  l = 2
end
if pair == 7
  dlmar.push(dlc,dld)
  dlnum.push(dlx,dly)
  dlx = 100
  dly = 100
  l = 2
end
if pair == 8
  dlmar.push(dlc,dle)
  dlnum.push(dlx,dlz)
  dlx = 100
  dlz = 100
  l = 2
end
if pair == 9
  dlmar.push(dld,dle)
  dlnum.push(dly,dlz)
  dly = 100
  dlz = 100
  l = 2
end
if pair == 10
  dlmar.push(dla,dlb,dlc)
  dlnum.push(dlv,dlw,dlx)
  dlv = 100
  dlw = 100
  dlx = 100
  l = 3
end
if pair == 11
  dlmar.push(dla,dlb,dld)
  dlnum.push(dlv,dlw,dly)
  dlv = 100
  dlw = 100
  dly = 100
  l = 3
end
if pair == 12
  dlmar.push(dla,dlb,dle)
  dlnum.push(dlv,dlw,dlz)
  dlv = 100
  dlw = 100
  dlz = 100
  l = 3
end
if pair == 13
  dlmar.push(dla,dlc,dld)
  dlnum.push(dlv,dlx,dly)
  dlv = 100
  dlx = 100
  dly = 100
  l = 3
end
if pair == 14
  dlmar.push(dla,dlc,dle)
  dlnum.push(dlv,dlx,dlz)
  dlv = 100
  dlx = 100
  dlz = 100
  l = 3
end
if pair == 15
  dlmar.push(dla,dld,dle)
  dlnum.push(dlv,dly,dlz)
  dlv = 100
  dly = 100
  dlz = 100
  l = 3
end
if pair == 16
  dlmar.push(dlb,dlc,dld)
  dlnum.push(dlw,dlx,dly)
  dlw = 100
  dlx = 100
  dly = 100
  l = 3
end
if pair == 17
  dlmar.push(dlb,dlc,dle)
  dlnum.push(dlw,dlx,dlz)
  dlw = 100
  dlx = 100
  dlz = 100
  l = 3
end
if pair == 18
  dlmar.push(dlb,dld,dle)
  dlnum.push(dlw,dly,dlz)
  dlw = 100
  dly = 100
  dlz = 100
  l = 3
end
if pair == 19
  dlmar.push(dlc,dld,dle)
  dlnum.push(dlx,dly,dlz)
  dlx = 100
  dly = 100
  dlz = 100
  l = 3
end
if pair == 20
  dlmar.push(dla,dlb,dlc,dld)
  dlnum.push(dlv,dlw,dlx,dly)
  dlv = 100
  dlw = 100
  dlx = 100
  dly = 100
  l = 4
end
if pair == 21
  dlmar.push(dla,dlb,dlc,dle)
  dlnum.push(dlv,dlw,dlx,dlz)
  dlv = 100
  dlw = 100
  dlx = 100
  dlz = 100
  l = 4
end
if pair == 22
  dlmar.push(dla,dlc,dld,dle)
  dlnum.push(dlv,dlx,dly,dlz)
  dlv = 100
  dlx = 100
  dly = 100
  dlz = 100
  l = 4
end
if pair == 23
  dlmar.push(dlb,dlc,dld,dle)
  dlnum.push(dlw,dlx,dly,dlz)
  dlw = 100
  dlx = 100
  dly = 100
  dlz = 100
  l = 4
end
if pair == 24
  handmar.push(dla,dlb,dld,dle)
  handnum.push(dlv,dlw,dly,dlz)
  dlv = 100
  dlw = 100
  dly = 100
  dlz = 100
  l = 4
end
nowdlmar = [dla,dlb,dlc,dld,dle]
nowdlnum = [dlv,dlw,dlx,dly,dlz]
m = 0
n = []
o = 0
p = 0
while m < 5 - l
  n = nowdlnum.sort
  o = n.shift
  p = nowdlnum.index(o)
  dlmar.push(nowdlmar[p])
  dlnum.push(nowdlnum[p])
  nowdlnum[p] = 100
  m += 1
end

#カード表示
setpos(0,0)
refresh
attrset(0)
addstr(kesu)
setpos(0,0)
refresh
message = " 〜ならびかえ〜"
addstr(message)
refresh
if handmar[0] == 0 || handmar[0] == 2
  attrset(Curses.color_pair(1))
else
  attrset(Curses.color_pair(2))
end
tate = 12
yoko = 5
setpos(tate,yoko)
addstr("      ")
setpos(tate+1,yoko)
addstr("  ")
addstr(mark[handmar[0]])
addstr("  ")
setpos(0,0)
sleep(0.01)
setpos(tate+2,yoko)
addstr("      ")
setpos(tate+3,yoko)
addstr("  ")
addstr(number[handnum[0]])
addstr("  ")
setpos(tate+4,yoko)
addstr("      ")
setpos(0,0)
refresh
sleep(0.01)
if handmar[1] == 0 || handmar[1] == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    tate = 12
    yoko = 18
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[handmar[1]])
    addstr("  ")
    setpos(0,0)
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[handnum[1]])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
    if handmar[2] == 0 || handmar[2] == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    tate = 12
    yoko = 31
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[handmar[2]])
    addstr("  ")
    setpos(0,0)
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[handnum[2]])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
    if handmar[3] == 0 || handmar[3] == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    tate = 12
    yoko = 44
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[handmar[3]])
    addstr("  ")
    setpos(0,0)
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[handnum[3]])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
      if handmar[4] == 0 || handmar[4] == 2
      attrset(Curses.color_pair(1))
    else
      attrset(Curses.color_pair(2))
    end
    tate = 12
    yoko = 57
    setpos(tate,yoko)
    addstr("      ")
    setpos(tate+1,yoko)
    addstr("  ")
    addstr(mark[handmar[4]])
    addstr("  ")
    setpos(0,0)
    sleep(0.01)
    setpos(tate+2,yoko)
    addstr("      ")
    setpos(tate+3,yoko)
    addstr("  ")
    addstr(number[handnum[4]])
    addstr("  ")
    setpos(tate+4,yoko)
    addstr("      ")
    setpos(0,0)
    refresh
    sleep(0.01)
    refresh
setpos(0,0)
refresh
attrset(0)
addstr(kesu)
setpos(0,0)
refresh
message = " 〜勝負!!〜"
addstr(message)
refresh
sleep(0.5)
if dlmar[0] == 0 || dlmar[0] == 2
  attrset(Curses.color_pair(1))
else
  attrset(Curses.color_pair(2))
end
tate = 3
yoko = 5
setpos(tate,yoko)
addstr("      ")
setpos(tate+1,yoko)
addstr("  ")
addstr(mark[dlmar[0]])
addstr("  ")
setpos(0,0)
sleep(0.01)
setpos(tate+2,yoko)
addstr("      ")
setpos(tate+3,yoko)
addstr("  ")
addstr(number[dlnum[0]])
addstr("  ")
setpos(tate+4,yoko)
addstr("      ")
setpos(0,0)
refresh
sleep(0.5)
if dlmar[1] == 0 || dlmar[1] == 2
  attrset(Curses.color_pair(1))
else
  attrset(Curses.color_pair(2))
end
tate = 3
yoko = 18
setpos(tate,yoko)
addstr("      ")
setpos(tate+1,yoko)
addstr("  ")
addstr(mark[dlmar[1]])
addstr("  ")
setpos(0,0)
sleep(0.01)
setpos(tate+2,yoko)
addstr("      ")
setpos(tate+3,yoko)
addstr("  ")
addstr(number[dlnum[1]])
addstr("  ")
setpos(tate+4,yoko)
addstr("      ")
setpos(0,0)
refresh
sleep(0.5)
if dlmar[2] == 0 || dlmar[2] == 2
  attrset(Curses.color_pair(1))
else
  attrset(Curses.color_pair(2))
end
tate = 3
yoko = 31
setpos(tate,yoko)
addstr("      ")
setpos(tate+1,yoko)
addstr("  ")
addstr(mark[dlmar[2]])
addstr("  ")
setpos(0,0)
sleep(0.01)
setpos(tate+2,yoko)
addstr("      ")
setpos(tate+3,yoko)
addstr("  ")
addstr(number[dlnum[2]])
addstr("  ")
setpos(tate+4,yoko)
addstr("      ")
setpos(0,0)
refresh
sleep(0.5)
if dlmar[3] == 0 || dlmar[3] == 2
  attrset(Curses.color_pair(1))
else
  attrset(Curses.color_pair(2))
end
tate = 3
yoko = 44
setpos(tate,yoko)
addstr("      ")
setpos(tate+1,yoko)
addstr("  ")
addstr(mark[dlmar[3]])
addstr("  ")
setpos(0,0)
sleep(0.01)
setpos(tate+2,yoko)
addstr("      ")
setpos(tate+3,yoko)
addstr("  ")
addstr(number[dlnum[3]])
addstr("  ")
setpos(tate+4,yoko)
addstr("      ")
setpos(0,0)
refresh
sleep(0.5)
if dlmar[4] == 0 || dlmar[4] == 2
  attrset(Curses.color_pair(1))
else
  attrset(Curses.color_pair(2))
end
tate = 3
yoko = 57
setpos(tate,yoko)
addstr("      ")
setpos(tate+1,yoko)
addstr("  ")
addstr(mark[dlmar[4]])
addstr("  ")
setpos(0,0)
sleep(0.01)
setpos(tate+2,yoko)
addstr("      ")
setpos(tate+3,yoko)
addstr("  ")
addstr(number[dlnum[4]])
addstr("  ")
setpos(tate+4,yoko)
addstr("      ")
setpos(0,0)
refresh
sleep(0.5)

#===================勝負
#面倒だから配列の中身を戻す
a = handmar[0]
b = handmar[1]
c = handmar[2]
d = handmar[3]
e = handmar[4]
v = handnum[0]
w = handnum[1]
x = handnum[2]
y = handnum[3]
z = handnum[4]

attrset(Curses.color_pair(3) | A_REVERSE)
#ワンペア
if v == w
  point = 1
end
#ツーペア
if (v == w && x == y) || (v == w && y == z)
  point = 2
end
#スリーカード
if v == w && w == x
  point = 3
end
#ストレート
if v+1 == w && w+1 == x && x+1 == y && y+1 == z
  point = 4
end
#フラッシュ
if a == b && b == c && c == d && d == e
  point = 5
end
#フルハウス
if v == w && w == x && y == z
  point = 6
end
#フォーカード
if v == w && w == x && x == y
  point = 7
end
#ストレートフラッシュ
if a == b && b == c && c == d && d == e && v+1 == w && w+1 == x && x+1 == y && y+1 == z
  point = 8
end
#ロイヤルストレートフラッシュ
if a == b && b == c && c == d && d == e && v == 0 && w == 9 && x == 10 && y == 11 && z == 12
  point = 9
end
if point == 0
  setpos(17,28)
  addstr("ノーペア")
  refresh
end
if point == 9
  setpos(17,18)
  addstr("!!!!!ロイヤルストレートフラッシュ!!!!!")
  refresh
end
if point == 8
  setpos(17,23)
  addstr("ストレートフラッシュ!!!!")
  refresh
end
if point == 7
  setpos(17,28)
  addstr("フォーカード!!!")
  refresh
end
if point == 6
  setpos(17,28)
  addstr("フルハウス!!!")
  refresh
end
if point == 5
  setpos(17,28)
  addstr("フラッシュ!!")
  refresh
end
if point == 4
  setpos(17,28)
  addstr("ストレート!!")
  refresh
end
if point == 3
  setpos(17,28)
  addstr("スリーカード!!")
  refresh
end
if point == 2
  setpos(17,28)
  addstr("ツーペア!")
  refresh
end
if point == 1
  setpos(17,28)
  addstr("ワンペア!")
  refresh
end

#ディーラーの方
dla = dlmar[0]
dlb = dlmar[1]
dlc = dlmar[2]
dld = dlmar[3]
dle = dlmar[4]
dlv = dlnum[0]
dlw = dlnum[1]
dlx = dlnum[2]
dly = dlnum[3]
dlz = dlnum[4]
#ワンペア
if dlv == dlw
  dlpoint = 1
end
#ツーペア
if (dlv == dlw && dlx == dly) || (dlv == dlw && dly == dlz)
  dlpoint = 2
end
#スリーカード
if dlv == dlw && dlw == dlx
  dlpoint = 3
end
#ストレート
if dlv+1 == dlw && dlw+1 == dlx && dlx+1 == dly && dly+1 == dlz
  dlpoint = 4
end
#フラッシュ
if dla == dlb && dlb == dlc && dlc == dld && dld == dle
  dlpoint = 5
end
#フルハウス
if dlv == dlw && dlw == dlx && dly == dlz
  dlpoint = 6
end
#フォーカード
if dlv == dlw && dlw == dlx && dlx == dly
  dlpoint = 7
end
#ストレートフラッシュ
if dla == dlb && dlb == dlc && dlc == dld && dld == dle && dlv+1 == dlw && dlw+1 == dlx && dlx+1 == dly && dly+1 == dlz
  dlpoint = 8
end
#ロイヤルストレートフラッシュ
if dla == dlb && dlb == dlc && dlc == dld && dld == dle && dlv == 0 && dlw == 9 && dlx == 10 && dly == 11 && dlz == 12
  dlpoint = 9
end
if dlpoint == 0
  setpos(2,28)
  addstr("ノーペア")
  refresh
end
if dlpoint == 9
  setpos(2,18)
  addstr("!!!!!ロイヤルストレートフラッシュ!!!!!")
  refresh
end
if dlpoint == 8
  setpos(2,23)
  addstr("ストレートフラッシュ!!!!")
  refresh
end
if dlpoint == 7
  setpos(2,28)
  addstr("フォーカード!!!")
  refresh
end
if dlpoint == 6
  setpos(2,28)
  addstr("フルハウス!!!")
  refresh
end
if dlpoint == 5
  setpos(2,28)
  addstr("フラッシュ!!")
  refresh
end
if dlpoint == 4
  setpos(2,28)
  addstr("ストレート!!")
  refresh
end
if dlpoint == 3
  setpos(2,28)
  addstr("スリーカード!!")
  refresh
end
if dlpoint == 2
  setpos(2,28)
  addstr("ツーペア!")
  refresh
end
if dlpoint == 1
  setpos(2,28)
  addstr("ワンペア!")
  refresh
end
setpos(0,0)
refresh
attrset(0)
addstr(kesu)
setpos(0,0)
refresh
attrset(Curses.color_pair(3) | A_REVERSE)
if point > dlpoint
  message = " 君の勝ち!!"
  addstr(message)
  refresh
  win += 1
elsif point < dlpoint
  message = " 僕の勝ち!!"
  addstr(message)
  refresh
  win = 0
elsif point == dlpoint
  message = " 引き分け"
  addstr(message)
  refresh
  win = 0
end
sleep(3)
setpos(0,0)
refresh
attrset(0)
addstr(kesu)
setpos(0,0)
refresh
message = " もう一度やる?(やる:なにか入力、やめる:0)"
addstr(message)
refresh

answer = getch
if answer == "0"
  break
end
  setpos(0,0)
  refresh
  attrset(0)
  addstr(kesu)
setpos(2,0)
addstr(kesu)
setpos(17,0)
addstr(kesu)
  refresh
  setpos(0,0)
refresh
#カードを消す
 #ディーラーのカード表示(形だけ)
  setpos(12,5)
  addstr("      ")
  setpos(13,5)
  addstr("      ")
  setpos(14,5)
  addstr("      ")
  setpos(15,5)
  addstr("      ")
  setpos(16,5)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  setpos(12,18)
  addstr("      ")
  setpos(13,18)
  addstr("      ")
  setpos(14,18)
  addstr("      ")
  setpos(15,18)
  addstr("      ")
  setpos(16,18)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  setpos(12,31)
  addstr("      ")
  setpos(13,31)
  addstr("      ")
  setpos(14,31)
  addstr("      ")
  setpos(15,31)
  addstr("      ")
  setpos(16,31)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  setpos(12,44)
  addstr("      ")
  setpos(13,44)
  addstr("      ")
  setpos(14,44)
  addstr("      ")
  setpos(15,44)
  addstr("      ")
  setpos(16,44)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  setpos(12,57)
  addstr("      ")
  setpos(13,57)
  addstr("      ")
  setpos(14,57)
  addstr("      ")
  setpos(15,57)
  addstr("      ")
  setpos(16,57)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  attrset(0)
  addstr(kesu)
  setpos(0,0)
refresh

  setpos(3,5)
  addstr("      ")
  setpos(4,5)
  addstr("      ")
  setpos(5,5)
  addstr("      ")
  setpos(6,5)
  addstr("      ")
  setpos(7,5)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  setpos(3,18)
  addstr("      ")
  setpos(4,18)
  addstr("      ")
  setpos(5,18)
  addstr("      ")
  setpos(6,18)
  addstr("      ")
  setpos(7,18)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  setpos(3,31)
  addstr("      ")
  setpos(4,31)
  addstr("      ")
  setpos(5,31)
  addstr("      ")
  setpos(6,31)
  addstr("      ")
  setpos(7,31)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  setpos(3,44)
  addstr("      ")
  setpos(4,44)
  addstr("      ")
  setpos(5,44)
  addstr("      ")
  setpos(6,44)
  addstr("      ")
  setpos(7,44)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  setpos(3,57)
  addstr("      ")
  setpos(4,57)
  addstr("      ")
  setpos(5,57)
  addstr("      ")
  setpos(6,57)
  addstr("      ")
  setpos(7,57)
  addstr("      ")
  sleep(0.5)
  setpos(0,0)
  refresh
  attrset(0)
  addstr(kesu)
  setpos(0,0)
  refresh
end
ensure
  close_screen
end

