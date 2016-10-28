require 'test/unit'
require_relative 'compass_dice.rb'

class CompassTest < Test::Unit::TestCase
def setup
  @die = CompassDice.new
end
  def test_roll
    number=@die.roll
    assert(number < 8 , "roll mistake value in #{number}")
  end
  end