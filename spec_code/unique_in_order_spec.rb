require_relative "../train_code/unique_in_order.rb"


  describe "檢驗 unique_in_order" do
    it "輸入 \"aabbabc\" 輸出 ["a", "b", "c", "a", "b", "c"] " do
      ans = unique_in_order("aabbabc")
      expect(ans).to eq ["a", "b", "c", "a", "b", "c"]
    end
    it "輸入 \"11224445666\" 輸出 [1, 2, 4, 5, 6] " do
      ans = unique_in_order("11224445666")
      expect(ans).to eq [1, 2, 4, 5, 6]
    end
  end
