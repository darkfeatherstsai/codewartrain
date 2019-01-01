=begin
題目:回傳所給字串的中間的字，
     如果字串長度是偶數就回傳中間兩個
後記:解答的 s[(s.size-1)/2..s.size/2]好多了
     有想過但沒實際測試
     字串也可以像陣列那樣操作s[index]
=end
def get_middle(s)
  arr = s.split("")
  ans = []
  index = arr.size/2
  if arr.size % 2 == 0
    ans << arr[index-1]+arr[index]
  else
    ans << arr[index]
  end
  return ans.join
end
get_middle("test")
