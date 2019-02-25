require_relative "../train_code/expanded_form.rb"


  describe "檢驗 expanded_form" do
    it "輸入 12 輸出 10 + 2 " do
      ans = expanded_form(12)
      expect(ans).to eq "10 + 2"
    end
    it "輸入 789 輸出 700 + 80 + 9 " do
      ans = expanded_form(789)
      expect(ans).to eq "700 + 80 + 9"
    end
  end
