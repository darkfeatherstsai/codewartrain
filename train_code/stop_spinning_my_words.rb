=begin
題目:給一個字串，將裡面長度大於四的單字倒轉
想法:用 split(" ") 將字串分拆放入陣列
     將長度大於四的倒轉，再組合起來
=end
def spinWords(s)
  s_arr = s.split(" ")
  s_arr.each do |element|
    element.reverse! if element.size > 4
  end
  return s_arr.join(" ")
end
