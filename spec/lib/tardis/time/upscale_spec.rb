require "spec_helper"

RSpec.describe Tardis::Moment::Upscale do
  before(:each) do
    Numeric.include(Tardis::Moment::Upscale)
  end

  describe "#second" do
    it "returns seconds, based on the number given in seconds" do
      expect(1.second).to eq(1)
    end
  end

  describe "#seconds" do
    it "returns seconds, based on the number given in seconds" do
      expect(2.seconds).to eq(2)
    end
  end

  describe "#minute" do
    it "returns seconds, based on the number given in minutes" do
      expect(1.minute).to eq(60)
    end
  end

  describe "#minutes" do
    it "returns seconds, based on the number given in minutes" do
      expect(2.minutes).to eq(120)
    end
  end

  describe "#hour" do
    it "returns seconds, based on the number given in hours" do
      expect(1.hour).to eq(3_600)
    end
  end

  describe "#hours" do
    it "returns seconds, based on the number given in hours" do
      expect(2.hours).to eq(7_200)
    end
  end

  describe "#day" do
    it "returns seconds, based on the number given in days" do
      expect(1.day).to eq(86_400)
    end
  end

  describe "#days" do
    it "returns seconds, based on the number given in days" do
      expect(2.days).to eq(172_800)
    end
  end

  describe "#week" do
    it "returns seconds, based on the number given in weeks" do
      expect(1.week).to eq(604_800)
    end
  end

  describe "#weeks" do
    it "returns seconds, based on the number given in weeks" do
      expect(2.weeks).to eq(1_209_600)
    end
  end
end
