#!/usr/koeki/bin/ruby
# -*- conding: utf-8 -*-

n = 1
while true
  case
  when n % 15 == 0 then puts "FizzBuzz"
  when n %  3 == 0 then puts "Fizz"
  when n %  5 == 0 then puts "Buzz"
  else                  puts n
  end
  n += 1
end
