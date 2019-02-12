=begin
題目:給一個含有 ( 和 ) 的字串
     判斷要變更幾個才能達成對稱
想法:首先判斷字串的長度是否為偶數
     然後判斷前半字串 ) 的數量
     以及後半字串 ( 的數量
修正:不一定要是((()))這種形式
     ()()()也可以
     不是對稱，是()要配成對
def solve(string)
  return -1 if string.size % 2 != 0
  ans1 = string[0..(string.size / 2 - 1)].count(")")
  ans2 = string[string.size / 2..-1].count("(")
  return ans1 + ans2
end
solve(")(")
=end
#===============看完解答修正===============
#把已經配成對的()移除
#然後判斷頭一定是 "("，尾一定是 ")"
def solve(string)
  return -1 if string.size % 2 != 0
  ans = 0
  until string.size < 2

    if string[0] != "("
      string[0] = "("
      ans += 1
    end
    if string[-1] != ")"
      string[-1] = ")"
      ans += 1
    end
    string.slice!("()")
  end
  return ans
end
