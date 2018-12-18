=begin
題目:貓捉老鼠，計算貓能不能在指定步數內抓到老鼠
想法:首先判斷貓和老鼠是否都存在
     從範例來看地圖是3*9的長方形
     所以分別計算貓和老鼠的index除九的商和餘數
     相減取絕對值算是否大於五
修正:1.換行也是一個元素"\n"
     2.map不是固定形狀，所以要分別計算它的長寬
       用split對"\n"進行拆解計算它的size為有幾階
       split拆解後第一個元素+1("\n")為有幾個位子
=end
def cat_mouse(map, moves)
  how_many_steps = map.split("\n").size
  how_many_sites = map.split("\n")[0].size + 1
  map = map.chars
  if map.count("C") == 0 || map.count("m") == 0
    return "boring without two animals"
  else
    cat_step = map.index("C") / how_many_sites
    mouse_step = map.index("m") / how_many_sites
    cat_site = map.index("C") % how_many_sites
    mouse_site = map.index("m") % how_many_sites
    if (cat_step - mouse_step).abs + (cat_site - mouse_site).abs <= moves
      return "Caught!"
    else
      return "Escaped!"
    end
  end
end
map = """\
..C......
.........
....m...."""
cat_mouse(map, 5)
