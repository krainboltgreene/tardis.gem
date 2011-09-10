require 'minitest/autorun'
require 'tardis'
require 'tardis/extended'

class TestTardisExtended < MiniTest::Unit::TestCase
  def setup
    @second     = 1
    @minute     = @second  * 60
    @hour       = @minute  * 60
    @day        = @hour    * 24
    @week       = @day     * 7
    @fortnight  = @week    * 2
    @month      = @week    * 4
    @quarter    = @month   * 3
    @year       = @month   * 12
    @olympiad   = @year    * 4
    @lustrum    = @year    * 5
    @decade     = @year    * 10
    @indiction  = @year    * 15
    @jubilee    = @decade  * 5
    @century    = @decade  * 10
    @millennium = @century * 10
    @eon        = 1.0/0
  end

  def test_fortnight_count
    assert_equal @fortnight, Tardis::Fortnight
  end

  def test_quarter_count
    assert_equal @quarter, Tardis::Quarter
  end

  def test_olympiad_count
    assert_equal @olympiad, Tardis::Olympiad
  end

  def test_lustrum_count
    assert_equal @lustrum, Tardis::Lustrum
  end

  def test_indiction_count
    assert_equal @indiction, Tardis::Indiction
  end

  def test_jubilee_count
    assert_equal @jubilee, Tardis::Jubilee
  end

  def test_millennium_count
    assert_equal @millennium, Tardis::Millennium
  end

  def test_eon_count
    assert_equal @eon, Tardis::Eon
  end
end