require_relative 'die.rb'
require_relative 'percentage.rb'
require_relative 'compass_dice.rb'

class Statistics
  def initialize
    @table= {:north => 0, :east => 0, :south => 0, :west => 0}
    @total=0
  end

  def update_table(number)
  # puts "Number in table #{number}"
    case number
      when :north
        @table[:north]+=1
      when :south
        @table[:south]+=1
      when :east
        @table[:east]+=1
      else
        @table[:west]+=1


    end
    @total=@total+1
  end

  def total_throws
    @total
  end

  def north_average
    north =@table.values_at(:north).join.to_f
    north = north/(total_throws)*100
    Percentage.new(north)

  end

  def east_average
    east =@table.values_at(:east).join.to_f
    east =east/(total_throws)*100
    Percentage.new(east)
  end

  def west_average
    west =@table.values_at(:west).join.to_f
    west = west/(total_throws)*100
    Percentage.new(west)
  end

  def south_average
    south =@table.values_at(:south).join.to_f
    south = south/(total_throws)*100
    Percentage.new(south)
  end

  def print_table

    @table.each { |key, value|}

  end

end