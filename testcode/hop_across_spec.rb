require_relative "../test/hop_across.rb"

RSpec.describe HopAcross do
  describe "檢驗 Hop Across" do
    it "輸入 [2, 2, 3, 1, 1, 2, 1] 輸出 7" do
      lst = HopAcross.new([2, 2, 3, 1, 1, 2, 1])
      expect(result).to eq 7
    end
  end
end
