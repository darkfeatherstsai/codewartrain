require_relative "../train_code/stop_spinning_my_words.rb"


  describe "檢驗 spinning" do
    it "輸入 yap 輸出 yap" do
      ans = spinWords("yap")
      expect(ans).to eq "yap"
    end
    it "輸入 sword 輸出 drows" do
      ans = spinWords("sword")
      expect(ans).to eq "drows"
    end
    it "輸入 keep walking 輸出 keep gniklaw" do
      ans = spinWords("keep walking")
      expect(ans).to eq "keep gniklaw"
    end
    it "輸入 everything will be alright 輸出 gnihtyreve will be thgirla" do
      ans = spinWords("everything will be alright")
      expect(ans).to eq "gnihtyreve will be thgirla"
    end
  end
