#!/usr/koeki/bin/ruby
# coding:utf-8

x = []
w = 0
t = 0

open("hw.csv", "r") do |deta|
  while line = deta.gets
  if /(\S+),(\d+.\d+),(\d+.\d+)/ =~ line
    t = $2.to_f/100
    w = $3.to_f
    b = w/(t*t)
    x << {"name" => $1,"t" => t,"w" => w,"bmi" =>b}
  end
 end
end
for i in
  x.sort_by{|x| x["bmi"]}.reverse
  name = i["name"]
  t = i["t"]
  w = i["w"]
  b = i["bmi"]
  printf("%s,%4.1f,%4.1f,%3.2f\n",name,t,w,b)
end
