require_relative 'statistics.rb'
class Die
  attr_accessor :side

  def initialize
    @side


  end

  def roll
    Random.rand(4)
  end

  def throw
    number = roll
    case number
      when 1
        @side = :north
      when 2
        @side = :east
      when 3
        @side = :south
      else
        @side = :west
    end

  end

end