=begin
題目:移除除了在字尾的驚嘆號
想法:計算字尾有幾個驚嘆號
     然後全部移除
     最後再補回去
後記:較理想的解答
def remove(s)
  s.gsub(/!+(\w|\s)/, '\1')
end
=end
def remove(s)
  arr = s.chars
  index = -1
  counter = 0
  until arr[index] != "!"
    counter += 1 if arr[index] == "!"
    index -= 1
  end
  s_new = s.gsub("!", "")
  return s_new + "!" * counter
end
remove("A!SD!!!")
