=begin
題目:給一個陣列，裡面只有兩個數不重複出現
     計算兩數的和
想法:試著用map來處理看看
後記:select或許會比較好
=end
def repeats(arr)
  sum = 0
  arr.map{|i| sum += i if arr.count(i) == 1}
  return sum
end
repeats([4,5,7,5,4,8])
