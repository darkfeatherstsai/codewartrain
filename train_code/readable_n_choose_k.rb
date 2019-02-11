=begin
題目:在 Integer 類別裡，寫一個method "choose"
     能回傳跟數學排列組合的C n 取 k 一樣的數值
     EX: C5取2 = 5!/2!(5-2)! = 10
想法:ruby應該有算 n! 的方法
     不過先試著自己來
     n! = (1..n).reduce(:*)
=end
class Integer
  def choose(k)
    return "Error! n should bigger than k" if self < k
    arr = [self, k, self - k]
    index = 0
    arr.each do |element|
      (element-1).downto(1) do |i|
        arr[index] *= i
        #p arr[index]
      end
      index += 1
    end
    ans = arr[0] / (arr[1] * arr[2])
  end
end
