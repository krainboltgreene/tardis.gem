require "spec_helper"

RSpec.describe Tardis::Moment::Traversal do
  before(:each) do
    Time.include(Tardis::Moment::Traversal)
  end
end
