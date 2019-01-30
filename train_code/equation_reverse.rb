=begin
題目:要將一個四則運算反轉成範例那樣
想法:用split把字串拆開成陣列反轉再組合就好
修正:數字也被反轉了100->001，不符題目要求
     看了一下運算符的ascii字元都小於等於47
     所以只要將連續兩個ascii字元>47的組合起來就可以了
=====================不需要=============================
     一開始加入"*"是為了讓最後迴圈可以脫出
     如果最後一個是數字，會判斷a[index+1].ord
     不過nil沒有ord，所以補一個會跳到else的字元
=====================不需要=============================
     迴圈條件設定為index == (a.size - 1)就可以
=end
def solve(eq)
  a = eq.split("")
  index = 0
  until index == (a.size - 1) do
    if a[index].ord > 47 && a[index+1].ord > 47
      a[index] += a[index+1]
      a.delete_at(index+1)

    else
      index +=1
    end
      p a
      p index
  end
  return a.reverse.join
end
solve("100*b/y+100")
