=begin
題目:給一個實數陣列
     要計算出要求的五個數
     1.最小值
     2.第一個四分位數
     3.中間數(第二個四分位數)
     4.第三個四分位數
     5.最大值
想法:最大值和最小值都有method可以用
     主要是長度為偶數的話比較麻煩
修正:1.乖乖的把左半和右半列出來
=end
def five_num(a)
  a.sort!
  if a.size % 2 == 0
    a_u = a.drop(a.size/2)
    a_l = a - a_u
    if a_u.size % 2 == 0
      q1 = (a_l[a_l.size / 2] + a_l[(a_l.size / 2) - 1]) * 0.5
      q2 = (a_l[-1] + a_u[0]) * 0.5
      q3 = (a_u[a_u.size / 2] + a_u[(a_u.size / 2) - 1]) * 0.5
    else
      q1 = a_l[a_l.size / 2]
      q2 = (a_l[-1] + a_u[0]) * 0.5
      q3 = a_u[a_u.size / 2]
    end
  else
    a_u = a.drop(a.size/2)
    a_l = a - a_u
    a_l << a[a.size / 2]
    if a_u.size % 2 == 0
      q1 = (a_l[a_l.size / 2] + a_l[(a_l.size / 2) - 1]) * 0.5
      q2 = (a_l[-1] + a_u[0]) * 0.5
      q3 = (a_u[a_u.size / 2] + a_u[(a_u.size / 2) - 1]) * 0.5
    else
      q1 = a[a.size / 4]
      q2 = a[a.size / 2]
      q3 = a[(a.size / 4)*3]
    end
  end
  return ans = [a.min, q1, q2, q3, a.max]
end
five_num([4, 6, -6, 7, -3])
