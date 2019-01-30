=begin
題目:要找出兩個數x,y的hamming distance
想法:hamming distance是兩個數在固定的長度下，相異字元的數量
     例題這邊是轉換成二進位制
     所以將兩數轉換成二進位，將其放入陣列，依序比較是否相異，相異就+1
修正:讓長度一樣那邊要插入的是"0"而不是0
=end
# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  #轉換成二進位制的陣列
  x_2 = x.to_s(2).chars
  y_2 = y.to_s(2).chars
  #要讓兩個長度一樣
  if x_2.size > y_2.size
    (x_2.size - y_2.size).times {y_2.unshift("0")}
  else
    (y_2.size - x_2.size).times {x_2.unshift("0")}
  end
  #開始比較
  distance = 0
  (0...x_2.size).each do |index|
    distance += 1 if x_2[index] != y_2[index]
  end
  return distance
end
hamming_distance(1, 4)
