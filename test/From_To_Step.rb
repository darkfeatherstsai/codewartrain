=begin
題目:有起點 終點和一次移動幾格
     列出移動的過程
想法:步伐是0或負數都回傳[]
     直接加上去就好了吧
修正:不一定是小到大，也有可能是大到小
=end
def generator(from, to, step)
  process = [from]
  return [] if step <= 0
  (step = -step) if from > to
    ((to-from) / step).times do
      from += step
      process << from
    end
  return process
end
generator(10, 20, 1)
