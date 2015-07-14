require "spec_helper"

RSpec.describe Tardis::VERSION do
  it "should be a string" do
    expect(Tardis::VERSION).to be_kind_of(String)
  end
end
