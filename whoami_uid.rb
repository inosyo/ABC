#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

io = IO.popen('finger `whoami`').readlines

userid = `whoami`.chomp
surname = 'Foo'
givenname = 'Var'

io.each{|line|
  line.scan(/Login name:\s+(\S+)\s+/)
   if $1 == userid.chomp && /(\S+)\s+(\S+)$/ =~ $'
     surname = $1
     givenname = $2
   end
}

printf("%sは大きな宿場町にやってきた。\n", userid)
printf("市長: おやこれは%s %sさんようこそ我が町へ\n", surname, givenname)
