=begin
題目:給一個層數，要畫出一個塔狀的圖
ex: 3
[
  '  *  ',
  ' *** ',
  '*****'
]
想法:三層的話，寬度是五
     n 層的寬度是 2n - 1
=end
def towerBuilder(n_floors)
  space = n_floors - 1
  star = 2 * n_floors - 1
  ans = []
  (1..n_floors).each do |n|
    ans << " " * space + "*" * (2 * n - 1) + " " * space
    space -= 1
  end
  return ans
end
towerBuilder(5)
