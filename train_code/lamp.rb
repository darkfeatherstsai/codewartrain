=begin
題目:給一個陣列內的元素代表燈
     0是關 1是開 相鄰兩盞燈不同時開
     如果只開最少盞燈，有幾盞燈要切換
想法:先判斷陣列長度
     奇數的話必定是0開始
     偶數則0 or 1都可以
     然後依序判斷是否跟前一個相同
     相同就轉換然後計數器+1
修正:題目是要求最少切換數，不是最少開燈數
後記:解答的解法直接全部跟0比較
     最後再從counter和a.size - counter選一個小的出來就好
     我想得比較複雜，但是可以算出切換完的排列長怎樣
=end
def lamps(a)
  counter = 0
  compare = 0
  if a.size % 2 != 0 || a[0] == compare
    (0...a.size).each do |i|
      if a[i] != compare
        a[i] = compare
        counter += 1
      end
      compare = (compare - 1).abs
    end
  else
    (0...a.size).each do |i|
      if a[i] == compare
        a[i] = (compare - 1).abs
        counter += 1
      end
      compare = (compare - 1).abs
    end
  end
  if counter > (a.size / 2)
    return a.size - counter
  else
    return counter
  end
end
lamps( [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
