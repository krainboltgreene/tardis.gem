require 'minitest/autorun'
require 'minitest/pride'
require 'tardis'

class TestTardisTimeTravel < MiniTest::Unit::TestCase
  def setup

  end

  def test_to_now
    random = rand(1000)
    start_time = Time.new - random.days
    assert_equal random.days, start_time.to_now
  end

  def test_from_now
    random = rand(1000)
    end_time = Time.new + random.days
    assert_equal random.days, end_time.from_now
  end
end
