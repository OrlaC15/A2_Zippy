require 'test/unit'
require_relative 'percentage.rb'

class PercentageTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @my_amount = Percentage.new(12.47)
  end

  def test_initialisation
    assert_in_delta(12.47, @my_amount.value,'percentage incorrect after initialisation')
    assert_equal('12% ', @my_amount.to_s, 'euro amount yields incorrect string')
  end
end