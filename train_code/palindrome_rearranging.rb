=begin
題目:給一個字串
     判斷是否能重新排序為迴文
想法:先用uniq把重複的字元刪掉
     然後依序計算那些字元在原字串的數量
     如果只有一個字元的數量為奇數，且字串長度也是奇數則ｔｒｕｅ
     如果全都是偶數也為ｔｒｕｅ
=end
def palindrome_rearranging(s)
  s_uniq = s.chars.uniq
  counter = 0
  s_uniq.each do |i|
    counter += 1 if s.count(i) % 2 != 0
  end
  counter += 1 if s.size % 2 == 0
  if counter > 1
    return false
  else
    return true
  end
end
palindrome_rearranging("aaab")
