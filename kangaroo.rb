require_relative 'point.rb'
require_relative 'die.rb'

class Kangaroo
  attr_accessor :coordinates, :die, :grid, :stats,:steps

  def initialize(grid)
    @die = Die.new
    @coordinates = Point.new
    @stats=Statistics.new
    @grid = grid
    @steps = 0
  end

  def hop!
    until at_home? @grid.dimensions
      begin

        tmp_point = Point.new
        @coordinates.points_print
        tmp_point.x = @coordinates.x
        tmp_point.y = @coordinates.y
        number = @die.throw
        tmp_point.move! number

        if @grid.hit_boundary? tmp_point
          @coordinates.err_msg
        else
          @coordinates.move! number
        end
      end
      @steps +=1
      @stats.update_table number
    end
    @coordinates.points_print
    puts "Finished in  #{@steps} steps"
  end



  def at_home?(dimension)
    if @coordinates.x == dimension-1 && @coordinates.y == dimension-1
      true
    else
      false
    end
  end

  def dice_stats
    puts "\nDice Statistics:"
    # puts "Table : #{@stats.print_table}"
    puts "Total throws : #{@stats.total_throws}"
    puts "North:#{@stats.north_average}  South:#{@stats.south_average} East:#{@stats.east_average} West:#{@stats.west_average} "
  end

end