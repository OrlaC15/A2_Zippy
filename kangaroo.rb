require_relative 'point.rb'
require_relative 'die.rb'

class Kangaroo
  attr_accessor :coordinates, :die, :grid, :steps

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

        @tmp_point = Point.new

        @coordinates.points_print
        @tmp_point.x = @coordinates.x
        @tmp_point.y = @coordinates.y
        way = @die.throw

        @tmp_point.move! way
        if @grid.hit_boundary? @tmp_point
          @coordinates.err_msg
        else
          @coordinates.move! way

        end
        @stats.update_table way
      end
      @steps +=1

    end

    @coordinates.points_print


  end

  def part1print
    puts " Finished in  #{@steps} steps"
  end

  def print_hops
    if @grid.hit_boundary? @tmp_point
      puts @coordinates.err_msg
    else

    end
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