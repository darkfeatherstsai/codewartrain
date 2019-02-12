require_relative "../train_code/simple_reversed_parenthesis.rb"


  describe "檢驗 simple_reversed_parenthesis" do
    it "輸入 \")(\" 輸出 2" do
      ans = solve(")(")
      expect(ans).to eq 2
    end
    it "輸入 \"())(\" 輸出 2" do
      ans = solve("())(")
      expect(ans).to eq 2
    end
    it "輸入 \"))(\" 輸出 -1" do
      ans = solve("))(")
      expect(ans).to eq -1
    end
    it "輸入 \")((()(\" 輸出 3" do
      ans = solve(")((()(")
      expect(ans).to eq 3
    end
  end
