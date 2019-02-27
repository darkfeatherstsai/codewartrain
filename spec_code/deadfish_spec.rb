require_relative "../train_code/deadfish.rb"


  describe "檢驗 deadfish" do
    it '輸入 "iiisdoso" 輸出 [8,64] ' do
      ans = parse("iiisdoso")
      expect(ans).to eq [8,64]
    end
    it '輸入 "isoisoiso" 輸出 [1,4,25] ' do
      ans = parse("isoisoiso")
      expect(ans).to eq [1,4,25]
    end
  end
