=begin
題目:計算陣列內字元重複的次數
     並弄成hash的形式?
想法:先弄一個新陣列放原陣列.uniq
     用新陣列each do去計算每個元素在原陣列內的數量
後記:array.each { |key| c[key]] += 1  }
                                 ^這邊是value
     重複計到key value就會+1
     "Hash"的H是大寫!!!(class第一個字都是大寫))
=end
def count(array)
  element_arr = array.uniq
  number_arr = []
  final_arr = []
  element_arr.each do |element|
    number_arr << array.count(element)
  end
  p number_arr
  0.upto(number_arr.size-1) do |i|
    final_arr << [element_arr[i],number_arr[i]]
  end
  Hash[final_arr]
end
count(['a', 'a', 'b', 'b', 'b'])
