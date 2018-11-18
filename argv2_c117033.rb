#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

if ARGV[0] == nil
  STDERR.print("./argv2_c117033.rb meta_c117033.csv")
  exit
end

STDERR.print("楽器の値段について表示できます。\n
検索ワード:")
pattern = STDIN.gets.chomp

request = Regexp.new(pattern, true)

i = 0
while play = gets
  if /(\S+)\s+(\S+)\s+(\d+)/=~ play
    if request =~ play
      print play
      i += 1
    end
  end
end

STDERR.printf("%d件出力\n", i)
