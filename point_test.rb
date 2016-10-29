require 'test/unit'
require_relative 'point.rb'

class PointTest < Test::Unit::TestCase

  def setup
    point = Point.new
    assert(point.x == 0, 'mistake with X ')
    assert(point.y == 0, 'mistake with Y')
  end

  def test_move_north
    point = Point.new
    point.move! :north
    assert_equal(1, point.y)
    end
    def test_move_south
      point = Point.new
      point.move! :south
      assert_equal(-1, point.y)
    end
  def test_move_east
    point = Point.new
    point.move! :east #(1,0)
    assert_equal(1, point.x)
  end
  def test_move_west
    point = Point.new
    point.move! :west #(-1,0)
    assert_equal(-1, point.x)
  end
  def test_move_northwest
    point = Point.new
    point.move! :northwest
    assert_equal(-1, point.x)
    assert_equal(1, point.y)
  end
  def test_move_north_eest
    point = Point.new
    point.move! :northeast
    assert_equal(1, point.x)
    assert_equal(1, point.y)
  end
  def test_move_southwest
    point = Point.new
    point.move! :southwest
    assert_equal(-1, point.x)
    assert_equal(-1, point.y)
  end
  def test_move_southeast
    point = Point.new
    point.move! :southeast
    assert_equal(1, point.x)
    assert_equal(-1, point.y)
  end



  def test_print
    point = Point.new

    assert_nothing_thrown do
      point.points_print
    end
  end

end
