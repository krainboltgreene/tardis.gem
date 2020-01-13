require "spec_helper"

RSpec.describe Tardis::Moment::Traversal::ForNumeric do
  before(:each) do
    Time.include(Tardis::Moment::Traversal::ForNumeric)
  end

  describe "#ago" do
    it "returns timestamp before" do
      seconds_after_event = rand 1_000..1_000_000
      event = Time.now - seconds_after_event
      # `#to_i` is because `Time.now` values here and in `#ago` are different
      expect(seconds_after_event.ago.to_i).to eq(event.to_i)
    end
  end

  describe "#later" do
    it "returns number of seconds between timestamps" do
      seconds_before_event = rand 1_000..1_000_000
      event = Time.now + seconds_before_event
      # `#to_i` is because `Time.now` values here and in `#later` are different
      expect(seconds_before_event.later.to_i).to eq(event.to_i)
    end
  end
end
