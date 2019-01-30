require_relative "../train_code/reverse_integer.rb"

RSpec.describe ReverseInteger do
  describe "檢驗 " do
    it "輸入 123 輸出 321" do
      num = ReverseInteger.new(123)
      result = num.reverse_integer
      expect(result).to be 321
    end
    it "輸入 -543 輸出 -345" do
      num = ReverseInteger.new(-543)
      result = num.reverse_integer
      expect(result).to be -345
    end
    it "輸入 5000 輸出 0" do
      num = ReverseInteger.new(5000)
      result = num.reverse_integer
      expect(result).to be 0
    end
  end
end
