#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-


mouse = {
  "おてんとうさま" => ["雲","隠して"],
  "雲" => ["風","吹き飛ばして"],
  "風" => ["お蔵の壁","さえぎって"],
  "お蔵の壁" => ["ねずみ","かじって穴をあけて"]
}

bridegroom = "おてんとうさま"

print("ある庄屋のお蔵に、ねずみが暮していた。\n")
print("ねずみは美しい娘ねずみを授かった。\n")
print("年頃になったので、娘のために日本一の婿を探しに旅に出た。\n")
printf("日本一の婿と見込んで%sに話をした。\n",bridegroom)

while true
  if bridegroom == "ねずみ"
    break
  end
  p bridegroom
  p mouse[bridegroom]
  p mouse[bridegroom][0]
  print("親ねずみ:「娘の婿になってほしいのだが」\n")
  printf("%s: 「わたしより偉いのは%s。わたしを%sしまうから」\n",
  bridegroom,mouse[bridegroom][0], mouse[bridegroom][1])

  printf("そこで親ねずみは%sに会いに行った。\n", mouse[bridegroom][0])
  bridegroom = mouse[bridegroom][0]
end

printf("親ねずみは%sを婿とした。\n", bridegroom)

