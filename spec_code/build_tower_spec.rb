require_relative "../train_code/build_tower.rb"


  describe "檢驗 create_phone_number" do
    it "輸入 3 輸出 ['  *  ', ' *** ', '*****'] " do
      ans = towerBuilder(3)
      expect(ans).to eq ['  *  ', ' *** ', '*****']
    end
    it "輸入 5 輸出 ['    *    ', '   ***   ', '  *****  ', ' ******* ', '*********'] " do
      ans = towerBuilder(5)
      expect(ans).to eq ['    *    ', '   ***   ', '  *****  ', ' ******* ', '*********']
    end
  end
