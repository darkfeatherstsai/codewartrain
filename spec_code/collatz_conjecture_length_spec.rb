require_relative "../train_code/collatz_conjecture_length.rb"

RSpec.describe CollatzConjectureLength do
  describe "檢驗 collatz_conjecture_length" do
    it "輸入 11 輸出 15" do
      init_number = CollatzConjectureLength.new(11)
      arr_length = init_number.collatz_conjecture_length
      expect(arr_length).to eq 15
    end
    it "輸入 14 輸出 18" do
      init_number = CollatzConjectureLength.new(14)
      arr_length = init_number.collatz_conjecture_length
      expect(arr_length).to eq 18
    end
  end
end
