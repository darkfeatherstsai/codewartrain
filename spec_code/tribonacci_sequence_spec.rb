require_relative "../train_code/tribonacci_sequence.rb"


  describe "檢驗 tribonacci_sequence" do
    it "輸入 [1, 1, 1] 輸出 [1, 1, 1, 3, 5, 9, 17, 31, 57, 105] " do
      ans = tribonacci([1, 1, 1], 10)
      expect(ans).to eq [1, 1, 1, 3, 5, 9, 17, 31, 57, 105]
    end
    it "輸入 [1, 5, 7] 輸出 [1, 5, 7, 13, 25, 45, 83, 153, 281, 517] " do
      ans = tribonacci([1,5,7], 10)
      expect(ans).to eq [1, 5, 7, 13, 25, 45, 83, 153, 281, 517]
    end
  end
