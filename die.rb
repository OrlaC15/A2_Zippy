require_relative 'statistics'
class Die
  attr_accessor :side, :total

  def initialize
    @side
    @total= 0
   @stats= Statistics.new

  end

  def roll
    @total= @total+1
    number = Random.rand(4)
    @stats.update_table number
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

  def total_throws
    @total
  end
  def average
    total_throws*100
  end
  def to_s
    puts 'Dice Statistics:'
    puts "Table : #{@stats.print_table}"
    puts "Total throws : #{total_throws}"
    #  puts "North: #{@table.values_at(:north)/average}  South: #{@table.values_at(:south)/average} "

  end

end