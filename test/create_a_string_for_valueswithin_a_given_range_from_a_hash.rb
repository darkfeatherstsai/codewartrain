=begin
題目:給你一個hash以及range
     要你回傳value在range裡的元素
想法:看了一下roc了解了hash和range的一些method
     用hash.each{|key, value| block}來處理看看
=end
def list_in_range(hash, range)
  hash_new = {}
  hash_new = hash.select{|key, value| range.include?(value) == true} #找出符合條件的物件
  hash_new_arr = hash_new.to_a #轉成array方便排序(其實hash也可以排序，但doc沒寫...)
  hash_ans = Hash[hash_new_arr.sort!{|element1, element2| element1[1]<=>element2[1]}]
  #排序完轉回hash以方便弄成解答的形式
  ans = []
  hash_ans.each{|key, value| ans << "#{key} (#{value})"}
  ans.join(", ")
  return ans
end
food = {
  "Hamburger"=>1.99,
  "Cheese"=>0.99,
  "Steak"=>4.99,
  "Lobster"=>7.99,
  "Fries"=>1.49,
  "Sandwich"=>2.49
}

list_in_range(food, (0.99..1.99))
# should return "Cheese (0.99), Fries (1.49), Hamburger (1.99)"
