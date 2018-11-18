#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

suu = [1, 2, 3, 4, 5]

kazu = ["いち", "に", "さん", "し", "ご"]

# sort_by で小さな数順もしくは文字コード順

p suu.sort_by{|no|
  no}

p suu.max_by{|no|
  no}

p suu.min_by{|no|
  no}

p kazu.sort_by{|no|
  no}

p kazu.max_by{|no|
  no}

p kazu.min_by{|no|
  no}




