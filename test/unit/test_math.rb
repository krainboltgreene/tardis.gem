require 'minitest/autorun'
require 'tardis'

class TestTardisMath < MiniTest::Unit::TestCase
  def test_one_second
    assert Tardis::Second, 1.second
  end

  def test_multiple_seconds
    random = rand(10000)
    assert Tardis::Second * random, random.seconds
  end

  def test_one_minute
    assert Tardis::Minute, 1.minute
  end

  def test_multiple_minutes
    random = rand(10000)
    assert Tardis::Minute * random, random.minutes
  end

  def test_one_hour
    assert Tardis::Hour, 1.hour
  end

  def test_multiple_hours
    random = rand(10000)
    assert Tardis::Hour * random, random.hours
  end
end