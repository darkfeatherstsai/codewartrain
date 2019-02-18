=begin
題目:給一個長度為 10 的實數陣列(數字介於 0 - 9)
     將其轉換成 "(123) 456-7890" 的形式
想法:
=end
def create_phone_number(arr)
  return "(" + arr[0..2].join + ") " + arr[3..5].join + "-" + arr[6..9].join
end
create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

=begin
後記:修正成下面這樣比較簡潔

def create_phone_number(arr)
  return "(#{arr[0..2].join}) #{arr[3..5].join}-#{arr[6..9].join}"
end

=end
