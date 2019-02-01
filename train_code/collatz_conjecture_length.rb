=begin
題目:給一個數字，如果是偶數就除二，如果是奇數就乘三再加一
     重複上面步驟直到數字變為一
     回傳總共經過幾個數字
想法:依照題目的條件執行，執行完的數字丟入一個新陣列
     最後計算陣列長度
=end
#class CollatzConjectureLength
  #def initialize(number)
    #number = number
  #end

  def collatz_conjecture_length(number)
    arr = [number]
    until number == 1
      if number.odd?
        number = number * 3 + 1
      else
        number /= 2
      end
      arr << number
    end
    return arr.size
  end
