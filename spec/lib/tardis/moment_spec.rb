require "spec_helper"

RSpec.describe Tardis::Moment do
  let(:described_class) { Class.new { include Tardis::Moment } }
  let(:minute) { described_class.const_get("MINUTE") }
  let(:hour) { described_class.const_get("HOUR") }
  let(:day) { described_class.const_get("DAY") }
  let(:week) { described_class.const_get("WEEK") }

  describe Tardis::Moment::SECOND do
    let(:second) { described_class.const_get("SECOND") }

    it "is the base unit" do
      expect(second).to eq(1)
    end
  end

  describe Tardis::Moment::MINUTE do
    let(:minute) { described_class.const_get("MINUTE") }

    it "is the correct value in seconds" do
      expect(minute).to eq(60)
    end
  end

  describe Tardis::Moment::HOUR do
    let(:hour) { described_class.const_get("HOUR") }

    it "is the correct value in seconds" do
      expect(hour).to eq(3_600)
    end
  end

  describe Tardis::Moment::DAY do
    let(:day) { described_class.const_get("DAY") }

    it "is the correct value in seconds" do
      expect(day).to eq(86_400)
    end
  end

  describe Tardis::Moment::WEEK do
    let(:week) { described_class.const_get("WEEK") }

    it "is the correct value in seconds" do
      expect(week).to eq(604_800)
    end
  end

  describe Tardis::Moment::MONTH do
    let(:week) { described_class.const_get("MONTH") }

    it "is the correct value in seconds" do
      expect(week).to eq(2_629_746)
    end
  end

  describe Tardis::Moment::YEAR do
    let(:week) { described_class.const_get("YEAR") }

    it "is the correct value in seconds" do
      expect(week).to eq(31_556_952)
    end
  end
end
