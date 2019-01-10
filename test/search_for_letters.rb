=begin
題目:給一個字串
     要計算a-z的個數，不分大小寫
     回傳一個長度26的二元字串
     最左那位代表a or A 0代表沒出現 1代表有出現
想法:首先題目不計較大小寫
     那就先轉成小寫，計算a-z的數量
     然後拆開成陣列，排序，捨棄非a-z的元素
     依序計算a-z是否存在
=end
=begin
def change a
  num = a.downcase.count("a-z")
  arr = a.downcase.chars.sort.drop(a.size - num)
  num_ascii_a = 97
  ans = []
  until num_ascii_a > 122
    if arr.include?(num_ascii_a.chr.to_s) == true
      ans << 1
    else
      ans << 0
    end
    num_ascii_a += 1
  end
  return ans.join
end
=end
def change a
  ans = []
  ("a".."z").each do |i|
    if a.downcase.include?(i)
      ans << 1
    else
      ans << 0
    end
  end
  return ans.join
end
change "asas***"
