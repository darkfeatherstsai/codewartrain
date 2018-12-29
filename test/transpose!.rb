=begin
題目:要創造一個方法transpose!
     可以將陣列transpose後取代原陣列
想法:在類別裡面定義一個transpose!的方法
     然後把原陣列transpose後取代
修正:"="不能作用於self要另外找辦法替代
     把新陣列加入原陣列中再用drop捨棄也不行
=end

class Array
  def transpose!
    a = self.transpose
    self.replace(a)
  end
end
arr = [[1,2,7],[3,5,6]]
arr.transpose!
arr
