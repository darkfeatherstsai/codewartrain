=begin
題目:smooth_number的定義為某數只能被2 3 5 7整除
     依照最大除數的不同分成四個種類
想法:依序除2 3 5 7除到餘數不為零就換下一個
     並且記錄除數以用來作結果的回傳
=end
def is_smooth(n)
  smooth_factor = [2, 3, 5 ,7]
  max_factor = 0
  smooth_factor.each do |element|
    #p max_factor
    #p n
    while (n % element) == 0
      #p element
      max_factor = element
      n /= element
      #p "#{n}!"
    end
    #p "#{n}"
  end
  return "non-smooth" if n > 1
  return "power of 2" if max_factor == 2
  return "3-smooth" if max_factor == 3
  return "Hamming number" if max_factor == 5
  return "humble number" if max_factor == 7
end
is_smooth(4096)
