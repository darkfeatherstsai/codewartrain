require_relative "../train_code/create_phone_number.rb"


  describe "檢驗 create_phone_number" do
    it "輸入 [1, 2, 3, 4, 5, 6, 7, 8, 9, 0] 輸出 \"(123) 456-7890\" " do
      ans = create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
      expect(ans).to eq "(123) 456-7890"
    end
    it "輸入 [9, 9, 5, 3, 5, 6, 6, 8, 9, 0] 輸出 \"(995) 356-6890\" " do
      ans = create_phone_number([9, 9, 5, 3, 5, 6, 6, 8, 9, 0])
      expect(ans).to eq "(995) 356-6890"
    end
  end
