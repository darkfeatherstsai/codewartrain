require_relative "../train_code/which_are_in.rb"


  describe "檢驗 which_are_in" do
    it "輸入 a1, a2 輸出 [\"arp\",\"live\",\"strong\"] " do
      a1 = ["arp", "live", "strong"]
      a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
      ans = in_array(a1, a2)
      expect(ans).to eq ["arp", "live", "strong"]
    end
  end
