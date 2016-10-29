require 'test/unit'
require_relative 'die.rb'
class DieTest < Test::Unit::TestCase
  def setup
    @die = Die.new
  end

  def test_roll
    number=@die.roll
    assert(number < 4, "roll mistake value in #{number}")
  end

  def test_throw
    sides = [:north, :east, :south, :west]
    some_side= @die.throw

    sides.each do
      assert(sides.include? some_side)
    end

  end

end