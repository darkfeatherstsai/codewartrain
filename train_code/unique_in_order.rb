=begin
題目:將輸入的字串 or 陣列，連續重複的字元消去
想法:如果輸入字串，先用 split 處理成陣列
修正:解答這個就可以應付所有狀況
def unique_in_order(iterable)
  it_array= []
  iterable.length.times do |x|
    it_array << iterable[x] if iterable[x] != iterable[x+1]
  end
  it_array
end
=end
def unique_in_order(input)
  return [] if input.empty? == true
  if input.class == String
    arr_input = input.split("")
  else
    arr_input = input
  end
  ans = [arr_input[0]]
  index = 0
  arr_input.each do |element|
    if ans[index] != element
      ans << element
      index += 1
    end
  end
  return ans
end
