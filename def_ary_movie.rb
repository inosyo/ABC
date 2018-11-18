#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-


def average(score)	# scoreは数値がたくさんしまわれる配列
  sum = 0.0		# 割り算する予定なので浮動小数点数にしておく
  for stars in score    # for A in B で B の中の A  について
    sum += stars
    # printf("%d 人目 途中合計 sum=%d\n", score.length + 1, sum)
  end
  sum / score.length      #配列 score の要素数を数え、それで sum を割る
end

points = Array.new		# からっぽの配列 points を作る
# i=0			# i が points の添字となる（入力された行を数える添字）

while true
  STDERR.print "星の数を入力して下さい: "
  no = gets
  if no == nil
    break
  end
  points << no.to_i
               # 上か下かどちらかでよい
  # points[i] = line.to_i
  # p points
  # i += 1
end

printf("\n みんなの平均は %3.1f です\n", average(points))
