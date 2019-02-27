=begin
題目:給一個字串，遇到特定字元要做指定的事
     "i" -> +1 (預設 0 )
     "d" -> -1
     "s" -> **2
     "o" -> 輸出
想法:把字串拆成陣列，用 each do + case when 來處理看看
修正:
=end
def parse(string)
  arr = string.chars
  num = 0
  ans_arr = []
  arr.each do |i|
    case i
    when "i"
      num += 1
    when "d"
      num -= 1
    when "s"
      num **= 2
    when "o"
      ans_arr << num
    end
  end
  return ans_arr
end

parse("iiisdoso")
