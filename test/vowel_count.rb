=begin
題目:計算母音(aeiou)的數量
想法:用.count
修正:雖然測試例子裏面都是小寫，但還是要考慮大寫的狀況
=end

def getCount(inputStr)
  inputStr.count("aeiouAEIOU")
end
getCount("abracadabra")
