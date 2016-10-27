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
      when 0
        @side = :north
      when 1
        @side = :east
      when 2
        @side = :south
      when 3
        @side = :west
      when 4
        @side = :northeast
      when 5
        @side = :northwest
      when 6
        @side = :southeast
      else
        @side = :southwest
    end

  end

end