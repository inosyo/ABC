#!/usr/koeki/bin/ruby
# -*- conding: utf-8 -*-

if ARGV[0] == nil
  STDERR.print("./regexp_station.rb station.csv")
  exit
end

STDERR.print("検索パターン:")
pattern = STDIN.gets.chomp  # 標準入力 キーボードで入力しますよ。

request = Regexp.new(pattern, true)  # true 大文字小文字を区別しない

i = 0
while station = gets
  if /(\S+)\s+(\S+)\s+(\S+)\s+(\S+)/=~ station
    if request =~ station
    print station
    i += 1
    end
  end
end
printf("%d件出力\n",i)
