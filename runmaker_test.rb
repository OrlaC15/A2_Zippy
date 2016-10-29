require 'test/unit'
require_relative 'run_maker.rb'
require_relative 'grid.rb'
require_relative 'kangaroo.rb'
require_relative 'zigzagaroo.rb'
class RunMakerTest < Test::Unit::TestCase
  def initialize(grid)

    @new_runs= RunMaker.new grid
    @totalskippy=[20,20,24,22,9]
    @totalzippy=[10,10,5,10,5]
    @new_runs.runs= 5
  end

  def test_average_skippy
    assert_in_delta(68.0, @new_runs.averagehopsskippy,  'average_price returns incorrect value')
  end
end