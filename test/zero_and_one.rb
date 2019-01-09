=begin
題目:有一個只含0和1的字串
     將"01"或"10"為一組全去掉後
     剩下幾個數字
想法:先轉成陣列然後依序判斷連續兩個數字是否相同
     相異的話就捨棄
     計算剩下的長度
修正:用.gsub(/01|10/)，
     正規表示法的練習裡面很常出現的用法...
def zero_and_one(s)
    arr = s.chars
    index = 0
    until index > (arr.size - 1)
      if arr[index] != arr[index+1]
        arr[index], arr[index+1] = " ", " "
        index += 2
      else
        index += 1
      end

    end
    p arr
    return arr.size - arr.count(" ")
=end
def zero_and_one(s)
  s.gsub(/01|10/, "").size
end
zero_and_one("011010110001")
