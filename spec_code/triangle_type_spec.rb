require_relative "../train_code/triangle_type.rb"


  describe "檢驗 triangle_type" do
    it '輸入 3,4,5 輸出 2 ' do
      ans = triangle_type(3,4,5)
      expect(ans).to eq 2
    end
    it "輸入 12,5,6 輸出 0 " do
      ans = triangle_type(12,5,6)
      expect(ans).to eq 0
    end
  end
