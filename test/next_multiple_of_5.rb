=begin
題目:輸入一個實數，回傳比該數大的5的倍數
想法:從商和餘數來處理
=end
def round_to_next_5(n)
  if n % 5 == 0
    return n
  else
   return ((n / 5) + 1) * 5
  end
end
