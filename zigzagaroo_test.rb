require 'test/unit'
require_relative 'zigzagaroo.rb'
class ZigzagarooTest < Test::Unit::TestCase

  def test_initialize
    zippy = Zigzagaroo.new 1
    assert_not_nil(zippy.die)
    assert_not_nil(zippy.coordinates)
    assert_not_nil(zippy.grid)
    assert_not_nil(zippy.stats)
    assert_not_nil(zippy.steps)

end
  end