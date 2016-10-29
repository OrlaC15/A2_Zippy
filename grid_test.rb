require 'test/unit'
require_relative 'grid.rb'
require_relative 'point.rb'

class GridTest < Test::Unit::TestCase

  def test_initialize
    grid = Grid.new
    assert_equal(0, grid.dimensions, "Error the intial value of grid should be (0,0)")

  end

  def test_hit_boundry_x?
    grid = Grid.new
    tmp_point = Point.new
    tmp_point.x = -1
    tmp_point.y = 0
    assert_boolean((grid.hit_boundary? tmp_point), 'Fails if boundary isnt hit (-1,0)')
  end

  def test_hit_boundry_y?
    grid = Grid.new
    tmp_point = Point.new
    tmp_point.x = 0
    tmp_point.y = -1
    assert_boolean((grid.hit_boundary? tmp_point), 'Fails if boundary isnt hit (0,-1)')
  end
end