require_relative 'kangaroo.rb'
require_relative 'compass_dice.rb'
require_relative 'statistics_two.rb'
class Zigzagaroo < Kangaroo
  attr_accessor :coordinates, :die, :grid

  def initialize(grid)
    super(grid)
    @die = CompassDice.new
    @stats=StatisticsTwo.new
  end


  def dice_stats
    puts 'Compass Statistics:'
    puts "Total throws : #{@stats.total_throws}"
    puts "North:#{@stats.north_average}  South:#{@stats.south_average} East:#{@stats.east_average} West:#{@stats.west_average} Northeast:#{@stats.northeast_average} Northwest:#{@stats.northwest_average}Southeast:#{@stats.southeast_average}Southwest:#{@stats.southwest_average}"
  end

end