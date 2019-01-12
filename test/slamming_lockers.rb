=begin
題目:有n個鎖，johnny將所有碰到的鎖都打開，或鎖上
     第一輪全部處理
     第二輪間隔一個處理
     第三輪間隔兩個處理
     直到第n輪
     要回傳有哪幾個鎖是開著的
想法:題目看了好一陣子才懂意思
     一開始先設定全部都是0(鎖上)
     然後設定一個jump來計算要跳過的數字
後記:ㄍㄋㄇㄉ，一定要看透是開的鎖的公式才能完成這題
def locker_run x
  (1..sqrt(x)).map{|i|i*i}
end
=end
def locker_run lockers
  arr = Array.new(lockers, 0)
  round = 1
  index = 0
  until round > lockers
    (lockers / round).times do
      arr[index] = (arr[index] - 1).abs
      index += round
    end
    index = round
    round += 1
  end
  ans = []
  index = 0
  round.times do
    ans << (index + 1) if arr[index] == 1
    index += 1
  end
  return ans
end
locker_run 10
