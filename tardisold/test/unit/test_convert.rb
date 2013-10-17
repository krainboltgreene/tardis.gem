require 'minitest/autorun'
require 'minitest/pride'
require 'tardis'

class TestTardisTimeConvert < MiniTest::Unit::TestCase

  def test_single_unit_to_seconds
    assert_equal Tardis::Time::Second, 1.second.to_seconds
    assert_equal Tardis::Time::Minute, 1.minute.to_seconds
    assert_equal Tardis::Time::Hour, 1.hour.to_seconds
    assert_equal Tardis::Time::Day, 1.day.to_seconds
    assert_equal Tardis::Time::Week, 1.week.to_seconds
    assert_equal Tardis::Time::Month, 1.month.to_seconds
    assert_equal Tardis::Time::Year, 1.year.to_seconds
    assert_equal Tardis::Time::Decade, 1.decade.to_seconds
    assert_equal Tardis::Time::Century, 1.century.to_seconds
  end

  def test_single_unit_to_minutes
    assert_equal Tardis::Time::Second.to_f / Tardis::Time::Minute.to_f, 1.second.to_minutes
    assert_equal Tardis::Time::Minute.to_f / Tardis::Time::Minute.to_f, 1.minute.to_minutes
    assert_equal Tardis::Time::Hour.to_f / Tardis::Time::Minute.to_f, 1.hour.to_minutes
    assert_equal Tardis::Time::Day.to_f / Tardis::Time::Minute.to_f, 1.day.to_minutes
    assert_equal Tardis::Time::Week.to_f / Tardis::Time::Minute.to_f, 1.week.to_minutes
    assert_equal Tardis::Time::Month.to_f / Tardis::Time::Minute.to_f, 1.month.to_minutes
    assert_equal Tardis::Time::Year.to_f / Tardis::Time::Minute.to_f, 1.year.to_minutes
    assert_equal Tardis::Time::Decade.to_f / Tardis::Time::Minute.to_f, 1.decade.to_minutes
    assert_equal Tardis::Time::Century.to_f / Tardis::Time::Minute.to_f, 1.century.to_minutes
  end

  def test_single_unit_to_hours
    assert_equal Tardis::Time::Second.to_f / Tardis::Time::Hour.to_f, 1.second.to_hours
    assert_equal Tardis::Time::Minute.to_f / Tardis::Time::Hour.to_f, 1.minute.to_hours
    assert_equal Tardis::Time::Hour.to_f / Tardis::Time::Hour.to_f, 1.hour.to_hours
    assert_equal Tardis::Time::Day.to_f / Tardis::Time::Hour.to_f, 1.day.to_hours
    assert_equal Tardis::Time::Week.to_f / Tardis::Time::Hour.to_f, 1.week.to_hours
    assert_equal Tardis::Time::Month.to_f / Tardis::Time::Hour.to_f, 1.month.to_hours
    assert_equal Tardis::Time::Year.to_f / Tardis::Time::Hour.to_f, 1.year.to_hours
    assert_equal Tardis::Time::Decade.to_f / Tardis::Time::Hour.to_f, 1.decade.to_hours
    assert_equal Tardis::Time::Century.to_f / Tardis::Time::Hour.to_f, 1.century.to_hours
  end

  def test_single_unit_to_days
    assert_equal Tardis::Time::Second.to_f / Tardis::Time::Day.to_f, 1.second.to_days
    assert_equal Tardis::Time::Minute.to_f / Tardis::Time::Day.to_f, 1.minute.to_days
    assert_equal Tardis::Time::Hour.to_f / Tardis::Time::Day.to_f, 1.hour.to_days
    assert_equal Tardis::Time::Day.to_f / Tardis::Time::Day.to_f, 1.day.to_days
    assert_equal Tardis::Time::Week.to_f / Tardis::Time::Day.to_f, 1.week.to_days
    assert_equal Tardis::Time::Month.to_f / Tardis::Time::Day.to_f, 1.month.to_days
    assert_equal Tardis::Time::Year.to_f / Tardis::Time::Day.to_f, 1.year.to_days
    assert_equal Tardis::Time::Decade.to_f / Tardis::Time::Day.to_f, 1.decade.to_days
    assert_equal Tardis::Time::Century.to_f / Tardis::Time::Day.to_f, 1.century.to_days
  end

  def test_single_unit_to_weeks
    assert_equal Tardis::Time::Second.to_f / Tardis::Time::Week.to_f, 1.second.to_weeks
    assert_equal Tardis::Time::Minute.to_f / Tardis::Time::Week.to_f, 1.minute.to_weeks
    assert_equal Tardis::Time::Hour.to_f / Tardis::Time::Week.to_f, 1.hour.to_weeks
    assert_equal Tardis::Time::Day.to_f / Tardis::Time::Week.to_f, 1.day.to_weeks
    assert_equal Tardis::Time::Week.to_f / Tardis::Time::Week.to_f, 1.week.to_weeks
    assert_equal Tardis::Time::Month.to_f / Tardis::Time::Week.to_f, 1.month.to_weeks
    assert_equal Tardis::Time::Year.to_f / Tardis::Time::Week.to_f, 1.year.to_weeks
    assert_equal Tardis::Time::Decade.to_f / Tardis::Time::Week.to_f, 1.decade.to_weeks
    assert_equal Tardis::Time::Century.to_f / Tardis::Time::Week.to_f, 1.century.to_weeks
  end

  def test_single_unit_to_months
    assert_equal Tardis::Time::Second.to_f / Tardis::Time::Month.to_f, 1.second.to_months
    assert_equal Tardis::Time::Minute.to_f / Tardis::Time::Month.to_f, 1.minute.to_months
    assert_equal Tardis::Time::Hour.to_f / Tardis::Time::Month.to_f, 1.hour.to_months
    assert_equal Tardis::Time::Day.to_f / Tardis::Time::Month.to_f, 1.day.to_months
    assert_equal Tardis::Time::Week.to_f / Tardis::Time::Month.to_f, 1.week.to_months
    assert_equal Tardis::Time::Month.to_f / Tardis::Time::Month.to_f, 1.month.to_months
    assert_equal Tardis::Time::Year.to_f / Tardis::Time::Month.to_f, 1.year.to_months
    assert_equal Tardis::Time::Decade.to_f / Tardis::Time::Month.to_f, 1.decade.to_months
    assert_equal Tardis::Time::Century.to_f / Tardis::Time::Month.to_f, 1.century.to_months
  end

  def test_single_unit_to_years
    assert_equal Tardis::Time::Second.to_f / Tardis::Time::Year.to_f, 1.second.to_years
    assert_equal Tardis::Time::Minute.to_f / Tardis::Time::Year.to_f, 1.minute.to_years
    assert_equal Tardis::Time::Hour.to_f / Tardis::Time::Year.to_f, 1.hour.to_years
    assert_equal Tardis::Time::Day.to_f / Tardis::Time::Year.to_f, 1.day.to_years
    assert_equal Tardis::Time::Week.to_f / Tardis::Time::Year.to_f, 1.week.to_years
    assert_equal Tardis::Time::Month.to_f / Tardis::Time::Year.to_f, 1.month.to_years
    assert_equal Tardis::Time::Year.to_f / Tardis::Time::Year.to_f, 1.year.to_years
    assert_equal Tardis::Time::Decade.to_f / Tardis::Time::Year.to_f, 1.decade.to_years
    assert_equal Tardis::Time::Century.to_f / Tardis::Time::Year.to_f, 1.century.to_years
  end

  def test_single_unit_to_decades
    assert_equal Tardis::Time::Second.to_f / Tardis::Time::Decade.to_f, 1.second.to_decades
    assert_equal Tardis::Time::Minute.to_f / Tardis::Time::Decade.to_f, 1.minute.to_decades
    assert_equal Tardis::Time::Hour.to_f / Tardis::Time::Decade.to_f, 1.hour.to_decades
    assert_equal Tardis::Time::Day.to_f / Tardis::Time::Decade.to_f, 1.day.to_decades
    assert_equal Tardis::Time::Week.to_f / Tardis::Time::Decade.to_f, 1.week.to_decades
    assert_equal Tardis::Time::Month.to_f / Tardis::Time::Decade.to_f, 1.month.to_decades
    assert_equal Tardis::Time::Year.to_f / Tardis::Time::Decade.to_f, 1.year.to_decades
    assert_equal Tardis::Time::Decade.to_f / Tardis::Time::Decade.to_f, 1.decade.to_decades
    assert_equal Tardis::Time::Century.to_f / Tardis::Time::Decade.to_f, 1.century.to_decades
  end

  def test_single_unit_to_centuries
    assert_equal Tardis::Time::Second.to_f / Tardis::Time::Century.to_f, 1.second.to_centuries
    assert_equal Tardis::Time::Minute.to_f / Tardis::Time::Century.to_f, 1.minute.to_centuries
    assert_equal Tardis::Time::Hour.to_f / Tardis::Time::Century.to_f, 1.hour.to_centuries
    assert_equal Tardis::Time::Day.to_f / Tardis::Time::Century.to_f, 1.day.to_centuries
    assert_equal Tardis::Time::Week.to_f / Tardis::Time::Century.to_f, 1.week.to_centuries
    assert_equal Tardis::Time::Month.to_f / Tardis::Time::Century.to_f, 1.month.to_centuries
    assert_equal Tardis::Time::Year.to_f / Tardis::Time::Century.to_f, 1.year.to_centuries
    assert_equal Tardis::Time::Decade.to_f / Tardis::Time::Century.to_f, 1.decade.to_centuries
    assert_equal Tardis::Time::Century.to_f / Tardis::Time::Century.to_f, 1.century.to_centuries
  end

  def test_multiple_units_to_seconds
    random = rand(10000)
    assert_equal Tardis::Time::Second * random, random.seconds.to_seconds
    assert_equal Tardis::Time::Minute * random, random.minute.to_seconds
    assert_equal Tardis::Time::Hour * random, random.hour.to_seconds
    assert_equal Tardis::Time::Day * random, random.day.to_seconds
    assert_equal Tardis::Time::Week * random, random.week.to_seconds
    assert_equal Tardis::Time::Month * random, random.month.to_seconds
    assert_equal Tardis::Time::Year * random, random.year.to_seconds
    assert_equal Tardis::Time::Decade * random, random.decade.to_seconds
    assert_equal Tardis::Time::Century * random, random.century.to_seconds
  end

  def test_multiple_units_to_minutes
    random = rand(10000)
    assert_equal (Tardis::Time::Second * random).to_f / Tardis::Time::Minute.to_f, random.seconds.to_minutes
    assert_equal (Tardis::Time::Minute * random).to_f / Tardis::Time::Minute.to_f, random.minute.to_minutes
    assert_equal (Tardis::Time::Hour * random).to_f / Tardis::Time::Minute.to_f, random.hour.to_minutes
    assert_equal (Tardis::Time::Day * random).to_f / Tardis::Time::Minute.to_f, random.day.to_minutes
    assert_equal (Tardis::Time::Week * random).to_f / Tardis::Time::Minute.to_f, random.week.to_minutes
    assert_equal (Tardis::Time::Month * random).to_f / Tardis::Time::Minute.to_f, random.month.to_minutes
    assert_equal (Tardis::Time::Year * random).to_f / Tardis::Time::Minute.to_f, random.year.to_minutes
    assert_equal (Tardis::Time::Decade * random).to_f / Tardis::Time::Minute.to_f, random.decade.to_minutes
    assert_equal (Tardis::Time::Century * random).to_f / Tardis::Time::Minute.to_f, random.century.to_minutes
  end

  def test_multiple_units_to_hours
    random = rand(10000)
    assert_equal (Tardis::Time::Second * random).to_f / Tardis::Time::Hour.to_f, random.seconds.to_hours
    assert_equal (Tardis::Time::Minute * random).to_f / Tardis::Time::Hour.to_f, random.minute.to_hours
    assert_equal (Tardis::Time::Hour * random).to_f / Tardis::Time::Hour.to_f, random.hour.to_hours
    assert_equal (Tardis::Time::Day * random).to_f / Tardis::Time::Hour.to_f, random.day.to_hours
    assert_equal (Tardis::Time::Week * random).to_f / Tardis::Time::Hour.to_f, random.week.to_hours
    assert_equal (Tardis::Time::Month * random).to_f / Tardis::Time::Hour.to_f, random.month.to_hours
    assert_equal (Tardis::Time::Year * random).to_f / Tardis::Time::Hour.to_f, random.year.to_hours
    assert_equal (Tardis::Time::Decade * random).to_f / Tardis::Time::Hour.to_f, random.decade.to_hours
    assert_equal (Tardis::Time::Century * random).to_f / Tardis::Time::Hour.to_f, random.century.to_hours
  end

  def test_multiple_units_to_days
    random = rand(10000)
    assert_equal (Tardis::Time::Second * random).to_f / Tardis::Time::Day.to_f, random.seconds.to_days
    assert_equal (Tardis::Time::Minute * random).to_f / Tardis::Time::Day.to_f, random.minute.to_days
    assert_equal (Tardis::Time::Hour * random).to_f / Tardis::Time::Day.to_f, random.hour.to_days
    assert_equal (Tardis::Time::Day * random).to_f / Tardis::Time::Day.to_f, random.day.to_days
    assert_equal (Tardis::Time::Week * random).to_f / Tardis::Time::Day.to_f, random.week.to_days
    assert_equal (Tardis::Time::Month * random).to_f / Tardis::Time::Day.to_f, random.month.to_days
    assert_equal (Tardis::Time::Year * random).to_f / Tardis::Time::Day.to_f, random.year.to_days
    assert_equal (Tardis::Time::Decade * random).to_f / Tardis::Time::Day.to_f, random.decade.to_days
    assert_equal (Tardis::Time::Century * random).to_f / Tardis::Time::Day.to_f, random.century.to_days
  end

  def test_multiple_units_to_weeks
    random = rand(10000)
    assert_equal (Tardis::Time::Second * random).to_f / Tardis::Time::Week.to_f, random.seconds.to_weeks
    assert_equal (Tardis::Time::Minute * random).to_f / Tardis::Time::Week.to_f, random.minute.to_weeks
    assert_equal (Tardis::Time::Hour * random).to_f / Tardis::Time::Week.to_f, random.hour.to_weeks
    assert_equal (Tardis::Time::Day * random).to_f / Tardis::Time::Week.to_f, random.day.to_weeks
    assert_equal (Tardis::Time::Week * random).to_f / Tardis::Time::Week.to_f, random.week.to_weeks
    assert_equal (Tardis::Time::Month * random).to_f / Tardis::Time::Week.to_f, random.month.to_weeks
    assert_equal (Tardis::Time::Year * random).to_f / Tardis::Time::Week.to_f, random.year.to_weeks
    assert_equal (Tardis::Time::Decade * random).to_f / Tardis::Time::Week.to_f, random.decade.to_weeks
    assert_equal (Tardis::Time::Century * random).to_f / Tardis::Time::Week.to_f, random.century.to_weeks
  end

  def test_multiple_units_to_months
    random = rand(10000)
    assert_equal (Tardis::Time::Second * random).to_f / Tardis::Time::Month.to_f, random.seconds.to_months
    assert_equal (Tardis::Time::Minute * random).to_f / Tardis::Time::Month.to_f, random.minute.to_months
    assert_equal (Tardis::Time::Hour * random).to_f / Tardis::Time::Month.to_f, random.hour.to_months
    assert_equal (Tardis::Time::Day * random).to_f / Tardis::Time::Month.to_f, random.day.to_months
    assert_equal (Tardis::Time::Week * random).to_f / Tardis::Time::Month.to_f, random.week.to_months
    assert_equal (Tardis::Time::Month * random).to_f / Tardis::Time::Month.to_f, random.month.to_months
    assert_equal (Tardis::Time::Year * random).to_f / Tardis::Time::Month.to_f, random.year.to_months
    assert_equal (Tardis::Time::Decade * random).to_f / Tardis::Time::Month.to_f, random.decade.to_months
    assert_equal (Tardis::Time::Century * random).to_f / Tardis::Time::Month.to_f, random.century.to_months
  end

  def test_multiple_units_to_years
    random = rand(10000)
    assert_equal (Tardis::Time::Second * random).to_f / Tardis::Time::Year.to_f, random.seconds.to_years
    assert_equal (Tardis::Time::Minute * random).to_f / Tardis::Time::Year.to_f, random.minute.to_years
    assert_equal (Tardis::Time::Hour * random).to_f / Tardis::Time::Year.to_f, random.hour.to_years
    assert_equal (Tardis::Time::Day * random).to_f / Tardis::Time::Year.to_f, random.day.to_years
    assert_equal (Tardis::Time::Week * random).to_f / Tardis::Time::Year.to_f, random.week.to_years
    assert_equal (Tardis::Time::Month * random).to_f / Tardis::Time::Year.to_f, random.month.to_years
    assert_equal (Tardis::Time::Year * random).to_f / Tardis::Time::Year.to_f, random.year.to_years
    assert_equal (Tardis::Time::Decade * random).to_f / Tardis::Time::Year.to_f, random.decade.to_years
    assert_equal (Tardis::Time::Century * random).to_f / Tardis::Time::Year.to_f, random.century.to_years
  end

  def test_multiple_units_to_decades
    random = rand(10000)
    assert_equal (Tardis::Time::Second * random).to_f / Tardis::Time::Decade.to_f, random.seconds.to_decades
    assert_equal (Tardis::Time::Minute * random).to_f / Tardis::Time::Decade.to_f, random.minute.to_decades
    assert_equal (Tardis::Time::Hour * random).to_f / Tardis::Time::Decade.to_f, random.hour.to_decades
    assert_equal (Tardis::Time::Day * random).to_f / Tardis::Time::Decade.to_f, random.day.to_decades
    assert_equal (Tardis::Time::Week * random).to_f / Tardis::Time::Decade.to_f, random.week.to_decades
    assert_equal (Tardis::Time::Month * random).to_f / Tardis::Time::Decade.to_f, random.month.to_decades
    assert_equal (Tardis::Time::Year * random).to_f / Tardis::Time::Decade.to_f, random.year.to_decades
    assert_equal (Tardis::Time::Decade * random).to_f / Tardis::Time::Decade.to_f, random.decade.to_decades
    assert_equal (Tardis::Time::Century * random).to_f / Tardis::Time::Decade.to_f, random.century.to_decades
  end

  def test_multiple_units_to_centuries
    random = rand(10000)
    assert_equal (Tardis::Time::Second * random).to_f / Tardis::Time::Century.to_f, random.seconds.to_centuries
    assert_equal (Tardis::Time::Minute * random).to_f / Tardis::Time::Century.to_f, random.minute.to_centuries
    assert_equal (Tardis::Time::Hour * random).to_f / Tardis::Time::Century.to_f, random.hour.to_centuries
    assert_equal (Tardis::Time::Day * random).to_f / Tardis::Time::Century.to_f, random.day.to_centuries
    assert_equal (Tardis::Time::Week * random).to_f / Tardis::Time::Century.to_f, random.week.to_centuries
    assert_equal (Tardis::Time::Month * random).to_f / Tardis::Time::Century.to_f, random.month.to_centuries
    assert_equal (Tardis::Time::Year * random).to_f / Tardis::Time::Century.to_f, random.year.to_centuries
    assert_equal (Tardis::Time::Decade * random).to_f / Tardis::Time::Century.to_f, random.decade.to_centuries
    assert_equal (Tardis::Time::Century * random).to_f / Tardis::Time::Century.to_f, random.century.to_centuries
  end


end
