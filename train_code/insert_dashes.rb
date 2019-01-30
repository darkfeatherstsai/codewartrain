=begin
題目:有一串數字
     在連續兩個奇數間插入"-"
     連續兩個偶數間插入"*"
     最後要回傳字串
想法:用insert(index,-)可以在陣列中插入
修正:0.even?也是true，但不符合題目要求
     arr.size-1 == arr.size - 1 =/= arr.size -1(不要偷懶)
     if裡面的index += 2是為了避免判斷到"-","*"
後記:整個程式碼用字串也可以操作，沒必要轉成陣列

=end
def insert_dash2(num)
  arr = num.digits.reverse
  index = 0
  until index == (arr.size - 1) do
    if arr[index].odd? == true && arr[index+1].odd? == true
      arr.insert(index+1,"-")
      index +=2
    elsif arr[index].even? == true && arr[index+1].even? == true && arr[index] > 0 && arr[index+1] > 0
      arr.insert(index+1,"*")
      index +=2
    else
      index +=1
    end
  end
  p arr.join
end
insert_dash2(2022)
