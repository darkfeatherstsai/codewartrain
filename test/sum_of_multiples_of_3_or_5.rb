=begin
題目:給一個實數n
     要計算從0..n內3以及5的倍數的總和
想法:計算每個數 %3=0 或 %5=0
     符合條件的就加到sum裡面
=end
def find(n)
  sum = 0
  (1..n).each {|i| sum += i if i % 3 == 0 || i % 5 == 0}
  return sum
end

find(10)
