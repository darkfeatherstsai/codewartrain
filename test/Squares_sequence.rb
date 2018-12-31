=begin
題目:有兩個常數x ,n
     要回傳大小為n陣列
     x為陣列中第一個數
     下一個數為前一個數的平方
想法:把x平方後放進陣列
     然後index+1，再平方放進陣列
     做n次
修正:題目沒看完，少一個條件是n<=0時回傳空陣列
=end
def squares(x, n)
  arr = [x]
  index = 0

  (n-1).times do
    arr << arr[index]**2
    index += 1
  end
  if n <= 0
    return []
  else
    return arr
  end
end
squares(2,5)
