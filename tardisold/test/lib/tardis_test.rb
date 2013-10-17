require 'minitest/autorun'
require 'helper'

class TestTardis < MiniTest::Unit::TestCase
  def test_that_things_work
    assert true
  end

  def test_that_namespace_defined
    assert(defined?(Tardis))
  end
end
