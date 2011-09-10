require 'minitest/autorun'
require 'tardis'

class TestTardisMath < MiniTest::Unit::TestCase
  def test_one_second
    assert_equal Tardis::Second, 1.second
  end

  def test_one_minute
    assert_equal Tardis::Minute, 1.minute
  end

  def test_one_hour
    assert_equal Tardis::Hour, 1.hour
  end

  def test_one_day
    assert_equal Tardis::Day, 1.day
  end

  def test_one_week
    assert_equal Tardis::Week, 1.week
  end

  def test_one_month
    assert_equal Tardis::Month, 1.month
  end

  def test_one_year
    assert_equal Tardis::Year, 1.year
  end

  def test_one_decade
    assert_equal Tardis::Decade, 1.decade
  end

  def test_one_century
    assert_equal Tardis::Century, 1.century
  end


  def test_multiple_seconds
    random = rand(10000)
    assert Tardis::Second * random, random.seconds
  end

  def test_multiple_minutes
    random = rand(10000)
    assert Tardis::Minute * random, random.minutes
  end

  def test_multiple_hours
    random = rand(10000)
    assert Tardis::Hour * random, random.hours
  end

  def test_multiple_days
    random = rand(10000)
    assert Tardis::Day * random, random.days
  end

  def test_multiple_weeks
    random = rand(10000)
    assert Tardis::Week * random, random.weeks
  end

  def test_multiple_months
    random = rand(10000)
    assert Tardis::Month * random, random.months
  end

  def test_multiple_years
    random = rand(10000)
    assert Tardis::Year * random, random.years
  end

  def test_multiple_decades
    random = rand(10000)
    assert Tardis::Decade * random, random.decades
  end

  def test_multiple_centuries
    random = rand(10000)
    assert Tardis::Century * random, random.centuries
  end
end