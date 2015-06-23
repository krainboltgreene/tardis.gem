require "spec_helper"

describe Tardis::VERSION do
  it "should be a string" do
    expect(Tardis::VERSION).to be_kind_of(String)
  end
end
