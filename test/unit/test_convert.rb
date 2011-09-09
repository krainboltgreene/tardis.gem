require 'minitest/autorun'
require 'tardis'

class TestTardisConvert < MiniTest::Unit::TestCase
  def test_single_unit_to_seconds
    assert_equal Tardis::Second, 1.second.to_seconds
    assert_equal Tardis::Minute, 1.minute.to_seconds
    assert_equal Tardis::Hour, 1.hour.to_seconds
    assert_equal Tardis::Day, 1.day.to_seconds
    assert_equal Tardis::Week, 1.week.to_seconds
    assert_equal Tardis::Month, 1.month.to_seconds
    assert_equal Tardis::Year, 1.year.to_seconds
    assert_equal Tardis::Decade, 1.decade.to_seconds
    assert_equal Tardis::Century, 1.century.to_seconds
  end

  def test_single_unit_to_minutes
    assert_equal Tardis::Second.to_f / Tardis::Minute.to_f, 1.second.to_minutes
    assert_equal Tardis::Minute.to_f / Tardis::Minute.to_f, 1.minute.to_minutes
    assert_equal Tardis::Hour.to_f / Tardis::Minute.to_f, 1.hour.to_minutes
    assert_equal Tardis::Day.to_f / Tardis::Minute.to_f, 1.day.to_minutes
    assert_equal Tardis::Week.to_f / Tardis::Minute.to_f, 1.week.to_minutes
    assert_equal Tardis::Month.to_f / Tardis::Minute.to_f, 1.month.to_minutes
    assert_equal Tardis::Year.to_f / Tardis::Minute.to_f, 1.year.to_minutes
    assert_equal Tardis::Decade.to_f / Tardis::Minute.to_f, 1.decade.to_minutes
    assert_equal Tardis::Century.to_f / Tardis::Minute.to_f, 1.century.to_minutes
  end

  def test_single_unit_to_hours
    assert_equal Tardis::Second.to_f / Tardis::Hour.to_f, 1.second.to_hours
    assert_equal Tardis::Minute.to_f / Tardis::Hour.to_f, 1.minute.to_hours
    assert_equal Tardis::Hour.to_f / Tardis::Hour.to_f, 1.hour.to_hours
    assert_equal Tardis::Day.to_f / Tardis::Hour.to_f, 1.day.to_hours
    assert_equal Tardis::Week.to_f / Tardis::Hour.to_f, 1.week.to_hours
    assert_equal Tardis::Month.to_f / Tardis::Hour.to_f, 1.month.to_hours
    assert_equal Tardis::Year.to_f / Tardis::Hour.to_f, 1.year.to_hours
    assert_equal Tardis::Decade.to_f / Tardis::Hour.to_f, 1.decade.to_hours
    assert_equal Tardis::Century.to_f / Tardis::Hour.to_f, 1.century.to_hours
  end

  def test_single_unit_to_days
    assert_equal Tardis::Second.to_f / Tardis::Day.to_f, 1.second.to_days
    assert_equal Tardis::Minute.to_f / Tardis::Day.to_f, 1.minute.to_days
    assert_equal Tardis::Hour.to_f / Tardis::Day.to_f, 1.hour.to_days
    assert_equal Tardis::Day.to_f / Tardis::Day.to_f, 1.day.to_days
    assert_equal Tardis::Week.to_f / Tardis::Day.to_f, 1.week.to_days
    assert_equal Tardis::Month.to_f / Tardis::Day.to_f, 1.month.to_days
    assert_equal Tardis::Year.to_f / Tardis::Day.to_f, 1.year.to_days
    assert_equal Tardis::Decade.to_f / Tardis::Day.to_f, 1.decade.to_days
    assert_equal Tardis::Century.to_f / Tardis::Day.to_f, 1.century.to_days
  end

  def test_single_unit_to_weeks
    assert_equal Tardis::Second.to_f / Tardis::Week.to_f, 1.second.to_weeks
    assert_equal Tardis::Minute.to_f / Tardis::Week.to_f, 1.minute.to_weeks
    assert_equal Tardis::Hour.to_f / Tardis::Week.to_f, 1.hour.to_weeks
    assert_equal Tardis::Day.to_f / Tardis::Week.to_f, 1.day.to_weeks
    assert_equal Tardis::Week.to_f / Tardis::Week.to_f, 1.week.to_weeks
    assert_equal Tardis::Month.to_f / Tardis::Week.to_f, 1.month.to_weeks
    assert_equal Tardis::Year.to_f / Tardis::Week.to_f, 1.year.to_weeks
    assert_equal Tardis::Decade.to_f / Tardis::Week.to_f, 1.decade.to_weeks
    assert_equal Tardis::Century.to_f / Tardis::Week.to_f, 1.century.to_weeks
  end

  def test_multiple_units_to_seconds
    random = rand(10000)
    assert_equal Tardis::Second * random, random.seconds.to_seconds
    assert_equal Tardis::Minute * random, random.minute.to_seconds
    assert_equal Tardis::Hour * random, random.hour.to_seconds
    assert_equal Tardis::Day * random, random.day.to_seconds
    assert_equal Tardis::Week * random, random.week.to_seconds
    assert_equal Tardis::Month * random, random.month.to_seconds
    assert_equal Tardis::Year * random, random.year.to_seconds
    assert_equal Tardis::Decade * random, random.decade.to_seconds
    assert_equal Tardis::Century * random, random.century.to_seconds
  end

  def test_multiple_units_to_minutes
    random = rand(10000)
    assert_equal (Tardis::Second * random).to_f / Tardis::Minute.to_f, random.seconds.to_minutes
    assert_equal (Tardis::Minute * random).to_f / Tardis::Minute.to_f, random.minute.to_minutes
    assert_equal (Tardis::Hour * random).to_f / Tardis::Minute.to_f, random.hour.to_minutes
    assert_equal (Tardis::Day * random).to_f / Tardis::Minute.to_f, random.day.to_minutes
    assert_equal (Tardis::Week * random).to_f / Tardis::Minute.to_f, random.week.to_minutes
    assert_equal (Tardis::Month * random).to_f / Tardis::Minute.to_f, random.month.to_minutes
    assert_equal (Tardis::Year * random).to_f / Tardis::Minute.to_f, random.year.to_minutes
    assert_equal (Tardis::Decade * random).to_f / Tardis::Minute.to_f, random.decade.to_minutes
    assert_equal (Tardis::Century * random).to_f / Tardis::Minute.to_f, random.century.to_minutes
  end
end