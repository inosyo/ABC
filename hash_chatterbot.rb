#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-


vocab = Hash.new

printf("何か教えてよ \n")
line = gets.chomp!

if /^(\S+)(は|が|と)(\S+)/ =~ line
       topic = $1  
       keyword = $3
end

while true
  STDERR.printf("%sってなあに？\n", topic)
  line = gets.chomp!
  if /(\S+)(のこと|が|の|で|を|だ|も|こと|の)/ =~ line
    vocab[$1] = topic
    vocab.each{|pair|
      if topic == pair[1]
	if vocab[topic] == nil
	  break
	else printf("「%s」は「%s」ってことね\n",
		    vocab[topic], pair[0])
	end
      end
    }
    topic = keyword
    keyword = $1
  end
end
