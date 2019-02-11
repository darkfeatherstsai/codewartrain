require_relative "../train_code/readable_n_choose_k.rb"


  describe "檢驗 n_choose_k" do
    it "輸入 n = 2, k = 1 輸出 2" do
      ans = 2.choose(1)
      expect(ans).to eq 2
    end
    it "輸入 n = 5, k = 3 輸出 10" do
      ans = 5.choose(3)
      expect(ans).to eq 10
    end
    it "輸入 n = 10, k = 4 輸出 210" do
      ans = 10.choose(4)
      expect(ans).to eq 210
    end
  end
