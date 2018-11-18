#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-


# 並べかえ部分

def quicksort(number)	        # number 配列を受け取る	

  if number.length <= 1	        # カードが残り 1 枚以下なら、number は数値が入る
    number		        # 数値そのものを返して並べ換え完了
  else
    left = Array.new	        # 左側の山配列 left  を新規作成
    right = Array.new 	        # 右側の山配列 right を新規作成
    k = number.shift	        # number 配列の先頭を取り出して k に代入

    for x in number	        # 残った number 配列全てに対して繰り返す
      if x < k 	   	        # k より小さかったら
         left << x	        # 左側の山配列 left に追加
      else
         right << x	        # 右側の山配列 right に追加
      end
    end			        

    # quicksort(left) と k と quicksort(right) をくっつけたものが最終結果
    
    quicksort(left) + [k] + quicksort(right)
    
    # kは要素なので[]で括って配列にする

  end
end

# 並べるときに関する method 

def readNumArray()
  array = []                    # 並べる時に使う置場を配列 array と考える
  while line=gets		# 入力が続く間
    datum = line.chomp!.to_i	# 整数に直して
    array.push(datum)		# 配列 arrayに追加していく
  end
  array				# 最後にできあがった array を返す
end

#  並べかえ後についての method

def printArray(a)
  printf("[%s]\n", a.join(", "))
end

STDERR.print("カードを記録して下さい(終了は Ctrl-d):\n")

array = readNumArray()

STDERR.print("整列前:\n")

printArray(array)

printf("整列後:\n")
printf("小さな順に並べました\n")

printArray(quicksort(array))

