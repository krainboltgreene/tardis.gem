require 'minitest/autorun'
require 'tardis'

class TestTardisConvert < MiniTest::Unit::TestCase

  def test_one_second_to_seconds
    assert Tardis::Second, 1.second.to_seconds
  end

  def test_multiple_seconds_to_seconds
    random = rand(10000)
    assert Tardis::Second * random, random.seconds.to_seconds
  end

end