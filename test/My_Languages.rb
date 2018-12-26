=begin
題目:有一個用hash寫成的陣列
     裡面含有每種語言的成績
     回傳超過60分的語言
想法:把陣列每個元素...
修正:1.hash跟陣列是不同東西
     2.還要照分數高低來排
     3.key可以拿value，但value不能拿key
=end
def my_languages(results)
  language_scores = results.to_a.sort_by {|i| -i[1]}
  pass = []
  language_scores.each do |index|
    if index[1] >= 60
      pass << index[0]
    end
  end
  return pass
end
my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65})
