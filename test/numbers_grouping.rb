=begin
題目:有一個內含實數的陣列
     如果每10^4為一組
     需要幾行文字來表現這個陣列
想法:將陣列全部除10^4找商
     再用uniq把重複的去掉
     這樣就可以知道分幾組
     最後再加上原陣列內有幾個數
=end
def numbers_grouping(a)
  #=======================小實驗
  groups = a.sort!.map{|index| (index - 1) / 10**4 }.uniq
  groups.each do |index|
    puts "#{index*10**4}" + "~" + "#{(index + 1)*10**4}"
    a.each do |i|
      puts i if (i-1)/10**4 == index
    end
  end
  #========================小實驗
  return a.size + a.map{|index| (index - 1) / 10**4 }.uniq.size
  #上面這行為題目要的
end
numbers_grouping([10000, 20000, 30000, 40000, 50000, 60000, 10000, 120000, 150000, 200000, 300000, 1000000])
