=begin
題目:給兩個字串，判斷兩個字串裡面有沒有共同的長度 > 1 的片段
想法:長度 > 1 即可，所以一次取 str2 兩個字元str2[i..i+1]
     然後判斷是否包含在 str1 裡面
=end
def substring_test(str1, str2)
  ans = 0
  (str1.size - 1).times do |i|
    ans += 1 if str2.downcase.include?(str1[i..i+1].downcase) == true
  end
  if ans > 0
    return true
  else
    return false
  end
end
substring_test("supercalifragnilisticexpialidocious","SoundOfItIsAtrocious")
