require 'test/unit'
require_relative 'kangaroo.rb'
require_relative 'statistics.rb'
require_relative 'grid.rb'
class KangarooTest < Test::Unit::TestCase
  def test_initialize
   skippy = Kangaroo.new 1
    assert_not_nil(skippy.die)
    assert_not_nil(skippy.coordinates)
    assert_not_nil(skippy.grid)
    assert_not_nil(skippy.stats)
    assert_not_nil(skippy.steps)

  end

  def test_hop!

    skippy = Kangaroo.new Grid.new.dimensions
   skippy.hop!

 end

  def test_at_home?
    skippy = Kangaroo.new 1
    assert(!(skippy.at_home? 0), 'Skippy shouldnt be at home ')
  end
end