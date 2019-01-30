require_relative "../test/hop_across.rb"

RSpec.describe HopAcross do
  describe "檢驗 Hop Across" do
    it "輸入 [2, 2, 3, 1, 1, 2, 1] 輸出 7" do
      road = HopAcross.new([2, 2, 3, 1, 1, 2, 1])
      ans = road.hop_across
      expect(ans).to eq 7
    end
  end
end
