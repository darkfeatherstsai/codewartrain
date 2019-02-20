=begin
題目:要實現Tribonacci，輸入長度為三的訊號源
     下一個數為前三個數的總和
想法:抓三個數用 sum 來計算然後放入原陣列
修正:最後回傳有可能 n < 3 所以要修改成 ans[0..n-1]
=end
def tribonacci(signature,n)
  return [] if n == 0
  index = 0
  ans = signature
  until ans.size >= n
    ans << signature[index..index+2].sum
    index += 1
  end
  return ans[0..n-1]
end
tribonacci([1,1,1],10)
