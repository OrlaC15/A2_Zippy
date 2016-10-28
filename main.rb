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
skippy.dice_stats
#uncomment to run and print zippy and its statis like part 1
# Statistics has been extended to show extra directions in table

zippy= Zigzagaroo.new grid
zippy.hop!
zippy.dice_stats


puts "\nEnter dimension of the Grid for Part II(>=1):"
grid.dimension= gets.to_i
puts "\nEnter number of runs for part II(>=1):"
run.runs = gets.to_i
run.createrun
run.stats_average


