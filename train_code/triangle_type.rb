=begin
題目:給你三角形的三個邊長
     要判斷他是哪種三角形
想法: 1. 長邊等於另外兩短邊相加 <- 非三角形 0
      2. 長邊平方小於另外兩短邊平方相加 <- acute 銳角三角形 1
      3. 長邊平方等於另外兩短邊平方相加 <- right 直角三角形 2
      4. 長邊平方大於另外兩短邊平方相加 <- obtuse 鈍角三角形 3
      直接用長度平方來判斷會誤判 1.2
後記:這方法有點漂亮
def triangle_type (*sides)
  a, b, c = sides.sort

  return 0 unless c < a + b
  return  2 + (c**2 <=> a**2 + b**2)

end
=end
def triangle_type (a, b, c)
  tri = [a, b, c]
  tri.sort!
  if tri[-1] >= tri[0] + tri[1]
    return 0
  else
    x = tri[-1]**2 - tri[0]**2 - tri[1]**2
    if x < 0
      return 1
    elsif x == 0
      return 2
    else x > 0
      return 3
    end
  end
end
triangle_type(8,5,7)
