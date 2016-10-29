require 'test/unit'
require_relative 'die.rb'
require_relative 'percentage.rb'
require_relative 'statistics.rb'
class StatisticsTest < Test::Unit::TestCase

  def setup
    @stats= Statistics.new
    5.times do
      @stats.update_table :north

    end
    5.times do
      @stats.update_table :south

    end
    5.times do
      @stats.update_table :east

    end
    5.times do
      @stats.update_table :west

    end
  end

  def test_north_average

    assert_in_delta(@stats.north_average.to_s, 25.0, "Error #{@stats.north_average}")
  end

  def test_south_average

    assert_in_delta(@stats.south_average.to_s, 25.0, "Error #{@stats.south_average}")
  end

  def test_east_average

    assert_in_delta(@stats.east_average.to_s, 25.0, "Error #{@stats.east_average}")
  end

  def test_west_average
    assert_in_delta(@stats.west_average.to_s, 25.0, "Error #{@stats.east_average}")
  end


end