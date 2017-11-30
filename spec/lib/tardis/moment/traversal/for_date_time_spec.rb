require "spec_helper"

RSpec.describe Tardis::Moment::Traversal::ForDateTime do
  before(:each) do
    Time.include(Tardis::Moment::Traversal::ForDateTime)
  end

  describe "#from" do
    it "returns number of seconds between timestamps" do
      seconds_before_event = rand 1_000..1_000_000
      event = Time.now + seconds_before_event
      expect(event.from(Time.now)).to eq(seconds_before_event)
    end
  end

  describe "#to" do
    it "returns number of seconds between timestamps" do
      seconds_after_event = rand 1_000..1_000_000
      event = Time.now - seconds_after_event
      expect(event.to(Time.now)).to eq(seconds_after_event)
    end
  end

  describe "#from_now" do
    it "returns number of seconds between timestamps" do
      seconds_before_event = rand 1_000..1_000_000
      event = Time.now + seconds_before_event
      expect(event.from_now).to eq(seconds_before_event)
    end
  end

  describe "#to_now" do
    it "returns number of seconds between timestamps" do
      seconds_after_event = rand 1_000..1_000_000
      event = Time.now - seconds_after_event
      expect(event.to_now).to eq(seconds_after_event)
    end
  end
end
