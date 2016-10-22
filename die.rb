class Die
  attr_accessor :side

  def initialize
    @side
    @total= 0
    @table= {:north => 0, :east => 0, :south => 0, :west => 0}
  end

  def roll
    @total= @total+1
    number = Random.rand(4)

  end

  def throw

    number = roll
    case number
      when 1
        @side = :north
        @table[:north]+=1
      when 2
        @side = :east
        @table[:east]+=1
      when 3
        @side = :south
        @table[:south]+=1
      else
        @side = :west
        @table[:west]+=1

    end
  end

  def print_table

    @table.each { |key, value| puts "#{key} is #{value}" }
  end

  def total_throws
    @total
  end

  def average
    total_throws*100
  end

end