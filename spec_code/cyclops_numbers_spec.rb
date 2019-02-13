require_relative "../train_code/cyclops_numbers.rb"


  describe "檢驗 n_choose_k" do
    it "輸入 5 輸出 true" do
      ans = cyclops(5)
      expect(ans).to eq true
    end
    it "輸入 10 輸出 false" do
      ans = cyclops(10)
      expect(ans).to eq false
    end
    it "輸入 36 輸出 false" do
      ans = cyclops(35)
      expect(ans).to eq false
    end
  end
