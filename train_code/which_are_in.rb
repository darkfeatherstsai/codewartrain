=begin
題目:給兩個內含字串的陣列 a1 a2
     要判斷 a1 內的字串是否被包含在 a2 內的字串
     EX: "strong" <- "str"
     最後回傳的陣列要排序過
想法:用兩個 each 對 a1 及 a2 所有的字元來處理
     判斷的方法有
     1. "aaabc".include?("ab") 符合會回傳 true
     2. "aababc" =~ /ab/ 符合會回傳非 nil 的值
修正:會有重複判斷的 -> 使用 uniq 來處理
=end
def in_array(array1, array2)
  r = []
  array1.each do |a1_str|
    array2.each do |a2_str|
      r << a1_str if a2_str.include?(a1_str) == true
    end
  end
  return r.sort.uniq
end
