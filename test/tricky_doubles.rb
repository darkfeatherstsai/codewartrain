=begin
題目:給一個數字，如果它是重複兩次EX:1010 2525
     就回傳原本的數值
     如果不是就回傳原本值的兩倍
想法:to_s轉成字串，然後用insert在中間插入","
     用split(","")拆成兩半比較前後是否相同
=end

def tricky_doubles(n)
  return n*2 if n < 10
  n_str = n.to_s
  n_arr = n_str.insert((0.5*n_str.size), ",").split(",")
  if n_arr[0] == n_arr[1]
    return n
  else
    return n*2
  end
end

tricky_doubles(1005100)
