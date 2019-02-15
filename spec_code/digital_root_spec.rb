require_relative "../train_code/digital_root.rb"


  describe "檢驗 digital_root" do
    it "輸入 1990 輸出 1" do
      ans = digital_root(1990)
      expect(ans).to eq 1
    end
    it "輸入 2019 輸出 3" do
      ans = digital_root(2019)
      expect(ans).to eq 3
    end
    it "輸入 9487 輸出 1" do
      ans = digital_root(9487)
      expect(ans).to eq 1
    end
  end
