require_relative "../train_code/switch_lights.rb"

RSpec.describe SwitchLights do
  describe "檢驗 switch lights" do
    it "輸入 [0, 0] 輸出 [0, 0]" do
      lights_arr = SwitchLights.new([0, 0])
      result = lights_arr.switch_lights
      expect(result).to eq [0, 0]
    end
    it "輸入 [1, 1, 1] 輸出 [0, 1, 0]" do
      lights_arr = SwitchLights.new([1, 1, 1])
      result = lights_arr.switch_lights
      expect(result).to eq [0, 1, 0]
    end
    it "輸入 [0, 1, 1] 輸出 [0, 1, 0]" do
      lights_arr = SwitchLights.new([0, 1, 1])
      result = lights_arr.switch_lights
      expect(result).to eq [0, 1, 0]
    end
    it "輸入 [1, 0, 1, 1, 1] 輸出 [1, 1, 1, 1, 0]" do
      lights_arr = SwitchLights.new([1, 0, 1, 1, 1])
      result = lights_arr.switch_lights
      expect(result).to eq [1, 1, 0, 1, 0]
    end
  end
end
