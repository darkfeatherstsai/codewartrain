=begin
題目:給一個陣列代表蠟燭，0 是熄滅 1 是點著
     從第一根開始，碰到點著的蠟燭的話
     就將前面蠟燭狀態全部改變
     如果是[0, 0]的話就回傳原陣列
想法:先組合成字串，判斷該位子後面(包含該位子)點著的蠟燭是奇數還偶數
     奇數就改變，偶數就維持原狀
=end
class SwitchLights
  def initialize(a)
    @a = a
  end

  def switch_lights
    str_lights = @a.join.to_s
    index = 0
    return @a if @a.count(1) == 0
    @a.each do |light|
      if str_lights[index..(@a.size - 1)].count("1") % 2 != 0
        @a[index] = (light - 1).abs
      end
      index += 1
    end
    return @a
  end
end
