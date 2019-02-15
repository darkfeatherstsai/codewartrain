=begin
題目:給一個實數，將每個位數相加，直到剩個位數
想法:用 digits 將數字分拆放入陣列
    用 reduce 使其相加，重複直到剩個位數
=end
def digital_root(num)
  until num < 10
    num_arr = num.digits
    num = num_arr.reduce(0) { |total, i| total + i }
  end
  return num
end
