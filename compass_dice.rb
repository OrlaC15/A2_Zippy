require_relative 'die.rb'
require_relative 'statistics.rb'
class CompassDice < Die
   def initialize
    super
  end

  def roll
    Random.rand(8)
  end


end
