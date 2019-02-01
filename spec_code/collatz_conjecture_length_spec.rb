require_relative "../train_code/collatz_conjecture_length.rb"


  describe "檢驗 collatz_conjecture_length" do
    it "輸入 11 輸出 15" do
      arr_length = collatz_conjecture_length(11)
      expect(arr_length).to eq 15
    end
    it "輸入 14 輸出 18" do
      arr_length = collatz_conjecture_length(14)
      expect(arr_length).to eq 18
    end
  end
