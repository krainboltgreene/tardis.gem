require 'minitest/autorun'
require 'minitest/pride'
require 'tardis'


class TestTardisTimeMath < MiniTest::Unit::TestCase

  def test_one_second
    assert_equal Tardis::Time::Second, 1.second
  end

  def test_one_minute
    assert_equal Tardis::Time::Minute, 1.minute
  end

  def test_one_hour
    assert_equal Tardis::Time::Hour, 1.hour
  end

  def test_one_day
    assert_equal Tardis::Time::Day, 1.day
  end

  def test_one_week
    assert_equal Tardis::Time::Week, 1.week
  end

  def test_one_month
    assert_equal Tardis::Time::Month, 1.month
  end

  def test_one_year
    assert_equal Tardis::Time::Year, 1.year
  end

  def test_one_decade
    assert_equal Tardis::Time::Decade, 1.decade
  end

  def test_one_century
    assert_equal Tardis::Time::Century, 1.century
  end


  def test_multiple_seconds
    random = rand(10000)
    assert Tardis::Time::Second * random, random.seconds
  end

  def test_multiple_minutes
    random = rand(10000)
    assert Tardis::Time::Minute * random, random.minutes
  end

  def test_multiple_hours
    random = rand(10000)
    assert Tardis::Time::Hour * random, random.hours
  end

  def test_multiple_days
    random = rand(10000)
    assert Tardis::Time::Day * random, random.days
  end

  def test_multiple_weeks
    random = rand(10000)
    assert Tardis::Time::Week * random, random.weeks
  end

  def test_multiple_months
    random = rand(10000)
    assert Tardis::Time::Month * random, random.months
  end

  def test_multiple_years
    random = rand(10000)
    assert Tardis::Time::Year * random, random.years
  end

  def test_multiple_decades
    random = rand(10000)
    assert Tardis::Time::Decade * random, random.decades
  end

  def test_multiple_centuries
    random = rand(10000)
    assert Tardis::Time::Century * random, random.centuries
  end
end
