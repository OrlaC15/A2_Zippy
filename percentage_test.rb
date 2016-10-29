require 'test/unit'
require_relative 'percentage.rb'

class PercentageTest < Test::Unit::TestCase

  def setup
    @my_amount = Percentage.new(12.475)
  end

  def test_initialisation
   assert_in_delta(12.475, @my_amount.value,'percentage incorrect after initialisation')
   assert_equal('12% ', @my_amount.to_s, 'euro amount yields incorrect string')
  end
end