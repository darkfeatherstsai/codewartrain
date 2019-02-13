=begin
題目:給一個整數，判斷他的二進位
     是否以 0 為中心，其餘的數都為 1
想法:用 to_s(2) 轉換成二進位的字元
     判斷 0 是否只有一個
     中間那個是否為 0
=end
def cyclops?(number)
  num_str = number.to_s(2)
  if num_str.count("0") == 1 && num_str[num_str.size / 2] == "0" && num_str.size % 2 != 0
    return true
  else
    return false
  end
end
