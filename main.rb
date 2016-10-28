require_relative 'grid.rb'
require_relative 'kangaroo.rb'
require_relative 'zigzagaroo.rb'
require_relative 'run_maker.rb'

grid=Grid.new
run= RunMaker.new grid
skippy= Kangaroo.new grid

puts 'Enter dimension of the Grid for Part I(>=1):'
grid.dimension= gets.to_i
skippy.hop!
skippy.part1print
skippy.dice_stats



puts "\nEnter dimension of the Grid for Part II(>=1):"
grid.dimension= gets.to_i
puts "\nEnter number of runs for part II(>=1):"
run.runs = gets.to_i
run.createrun
run.stats_average


