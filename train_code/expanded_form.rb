=begin
題目:將一個數字展開
     EX: 12 ->"10 + 2"
想法:將數字用 digits 拆成陣列
     將陣列的 index 值當成 10 的次方
修正: digits 會把每個位數都放進陣列(包括 0 )
     所以中間要在加一行 arr_num.delete(0)

def expanded_form(num)
  arr_num = num.digits
  ans = ""
  (arr_num.size - 1).downto(1) do |n|
    ans += "#{arr_num[n] * (10 ** (n))} + "
    p ans
  end
  return ans
end
expanded_form(123456)
=end
def expanded_form(num)
  arr_num = num.digits.map.with_index {|n, index| n * (10 ** index)}
  arr_num.delete(0)
  return arr_num.reverse.join(" + ")
end
expanded_form(1200056)
