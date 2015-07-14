require "spec_helper"

RSpec.describe Tardis::Moment::Downscale do
  before(:each) do
    Numeric.include(Tardis::Moment::Downscale)
  end

  describe "#to_seconds" do
    it "returns number of seconds" do
      expect(1.to_seconds).to eq(1)
    end
  end

  describe "#as_seconds" do
    it "returns number of seconds" do
      expect(2.in_seconds).to eq(2)
    end
  end

  describe "#to_minutes" do
    it "returns number of minutes" do
      expect(60.to_minutes).to eq(1)
    end
  end

  describe "#as_minutes" do
    it "returns number of minutes" do
      expect(120.in_minutes).to eq(2)
    end
  end

  describe "#hour" do
    it "returns number of hours" do
      expect(3_600.to_hours).to eq(1)
    end
  end

  describe "#hours" do
    it "returns number of hours" do
      expect(7_200.in_hours).to eq(2)
    end
  end

  describe "#day" do
    it "returns number of days" do
      expect(86_400.to_days).to eq(1)
    end
  end

  describe "#days" do
    it "returns number of days" do
      expect(172_800.in_days).to eq(2)
    end
  end

  describe "#week" do
    it "returns number of weeks" do
      expect(604_800.to_weeks).to eq(1)
    end
  end

  describe "#weeks" do
    it "returns number of weeks" do
      expect(1_209_600.in_weeks).to eq(2)
    end
  end
end
