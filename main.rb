require_relative 'point.rb'
require_relative 'die.rb'
require_relative 'kangaroo.rb'
require_relative 'grid.rb'
class Main

  grid= Grid.new
  puts 'Enter dimension of the Grid for Part I(>=1):'
  grid.dimension = gets.to_i


end