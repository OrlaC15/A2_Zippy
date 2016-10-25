require_relative 'die.rb'
require_relative 'percentage.rb'

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
      when :east

        @table[:east]+=1

      when :south
        @table[:south]+=1

      else
        @table[:west]+=1


    end
    @total=@total+1
  end

  def total_throws
    @total
  end

  def average
    total= 100/total_throws
    total.to_i
  end

  def north_average
    north =@table.values_at(:north).join.to_i
    north = north *average
    Percentage.new(north)
  end

  def east_average
    east =@table.values_at(:east).join.to_i
    east = east *average
    Percentage.new(east)
  end

  def west_average
    west =@table.values_at(:west).join.to_i
    west = west *average
    Percentage.new(west)
  end

  def south_average
    south =@table.values_at(:south).join.to_i
    south = south *average
    Percentage.new(south)
  end

  def print_table

    @table.each { |key, value|}

  end

end