=begin
題目:有開始和結束兩個數字
     要分別計算中間0的數量 1的數量...9的數量
想法:先想辦法把所有的數字弄成一個大字串或是陣列
     再依序計算0~9的數量
後記:range p (0..9)       #0..9
           p (0..9).to_a  #[0,1..,9]
     這樣可以省去第一個迴圈
=end
def paint_letter_boxes(start, finish)
  str = ""
  ans = []
  start.upto(finish) do |i|
    str += i.to_s
  end
  0.upto(9) do |num|
    ans << str.count(num.to_s)
  end
  return ans
end
paint_letter_boxes(131,139)
