#!/usr/koeki/bin/ruby
# -*- coding:utf-8 -*-

srand

s = rand(3)

hand = ["ぐー","ちょき","ぱー"]

STDERR.print("じゃんけんぽん: \n")
STDERR.printf("\t1: %s \t 2: %s \t 3: %s\n",hand[0], hand[1], hand[2])

t = gets.chomp.to_i - 1

printf("ユーザ: %s\n", hand[t])
printf("コンピュータ: %s\n", hand[s])
