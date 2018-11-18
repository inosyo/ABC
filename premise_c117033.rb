#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

new = Hash.new
open("premise_c117033.csv", "r:utf-8") do |aaa|
  while bbb=aaa.gets
    if /(\S+)\s+(\S+)\s+(\S+)/=~bbb
      new[$1] = $2
    end
  end
end


