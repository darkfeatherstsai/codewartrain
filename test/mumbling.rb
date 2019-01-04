=begin
題目:給一個字串
     第n個字要出現n次
     字首要大寫
     中間用"-"隔開
想法:先分解成陣列
     然後一個一個處理
=end
def accum(s)
	arr = s.chars
  ans = []
  index = 0
  until index == s.size
    ans << (arr[index] * (index+1)).capitalize
    index += 1
  end
  return ans.join("-")
end
accum("ZpglnRxqenU")
