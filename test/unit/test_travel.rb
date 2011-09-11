require 'minitest/autorun'
require 'tardis'

class TestTardisTimeTravel < MiniTest::Unit::TestCase
  def setup

  end

  def test_to_now
    random = rand(1000)
    start_time = Time.new - random
    assert_equal start_time.to_now, random
  end

  def test_from_now

  end
end