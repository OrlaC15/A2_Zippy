#require_relative 'compass_dice'
require_relative 'die.rb'
require_relative 'grid.rb'
require_relative 'kangaroo.rb'
require_relative 'point.rb'
require_relative 'percentage.rb'
require_relative 'statistics.rb'
require_relative 'zigzagaroo.rb'

grid=Grid.new

puts 'Enter dimension of the Grid for Part I(>=1):'
grid.dimension = gets.to_i
#stats = Statistics.new
dice=Die.new
skippy= Kangaroo.new grid
skippy.hop!
skippy.dice_stats
#dice.to_s
