require 'minitest/autorun'
require 'minitest/pride'
require 'tardis'


class TestTardisTime < MiniTest::Unit::TestCase
  def setup
    # Unit Counts In Seconds
    @second    = 1
    @minute    = @second * 60
    @hour      = @minute * 60
    @day       = @hour   * 24
    @week      = @day    * 7
    @month     = @week   * 4
    @year      = @month  * 12
    @decade    = @year   * 10
    @century   = @decade  * 10
  end

  def test_minute_count
    assert_equal @minute, Tardis::Time::Minute
  end

  def test_hour_count
    assert_equal @hour, Tardis::Time::Hour
  end

  def test_day_count
    assert_equal @day, Tardis::Time::Day
  end

  def test_week_count
    assert_equal @week, Tardis::Time::Week
  end

  def test_month_count
    assert_equal @month, Tardis::Time::Month
  end

  def test_year_count
    assert_equal @year, Tardis::Time::Year
  end

  def test_decade_count
    assert_equal @decade, Tardis::Time::Decade
  end

  def test_century_count
    assert_equal @century, Tardis::Time::Century
  end
end
