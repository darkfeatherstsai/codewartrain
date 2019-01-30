=begin
題目:將母音/aeiou/轉換成該字元位子的數字
     EX: cat -> c2t
想法:1.用sub替換成該字元的index+1
     2.拆成陣列依序判斷是否為母音
修正:1.無法解決index問題

=end
=begin
def vowel_2_index(string)
  ans = string
  string.count("aeiou").times do
    ans = ans.sub(/[aeiou]/){|s| string.index(s, string.index(s)) + 1}
    p ans
  end
  return ans
end
vowel_2_index('this is my string')
=end
def vowel_2_index(string)
  arr = string.chars
  arr_new = arr.each_with_index {|x, i| arr[i] = i + 1 if x =~ /[aeiouAEIOU]/}
  return arr_new.join
end
vowel_2_index('Codewars is the best site in the world')
