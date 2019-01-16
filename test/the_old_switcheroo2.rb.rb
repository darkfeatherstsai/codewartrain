=begin
題目:給一個字串，要把英文字母轉換成數字
     a or A -> 1
     b or B -> 2
想法:先全部變成小寫，拆成陣列來處理
後記:string.downcase.gsub(/[a-z]/){|i| i.ord - 96}
     a 的ascii 是97  所以把所有的字母轉ascii再減去96
     97.chr -> a   a.ord -> 97
=end
def encode(string)
  arr = string.downcase.chars
  arr.each_with_index do |val, index|
  arr[index] = (val.ord - 96) if val =~ /[a-z]/
  end
  return arr.join
end
encode('abc')
