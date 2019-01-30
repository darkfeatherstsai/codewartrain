=begin
題目:給一個陣列，判斷內含的數字
     是否為回文形式
想法:用each do來對陣列內每個元素來做處理
後記:用reverse來處理就好啦!!!!
=end
def convert_palindromes(numbers)
  index_ans = 0
  ans = Array.new(numbers.size, 1)
  numbers.each do |number|
    number_string = number.to_s
    0.upto(0.5 * number_string.size) do |index|
      ans[index_ans] = 0 if number_string[index] != number_string[(-index) - 1]
    end
    index_ans += 1
  end
  return ans
end

convert_palindromes([22, 303, 76, 411, 89])
