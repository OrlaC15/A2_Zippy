require 'test/unit'

require_relative 'statistics_two.rb'

class StatisticsTwoTest < Test::Unit::TestCase

  def setup
    @stats= StatisticsTwo.new
    5.times do
      @stats.update_table :northeast

    end
    5.times do
      @stats.update_table :northwest

    end
    5.times do
      @stats.update_table :southeast

    end
    5.times do
      @stats.update_table :southwest

    end
  end

  def test_northwest_average

    assert_in_delta(@stats.northwest_average.to_s, 25.0, "Error #{@stats.northwest_average}")
  end

  def test_northeast_average

    assert_in_delta(@stats.northeast_average.to_s, 25.0, "Error #{@stats.northeast_average}")
  end

  def test_southeast_average

    assert_in_delta(@stats.southeast_average.to_s, 25.0, "Error #{@stats.southeast_average}")
  end

  def test_southwest_average
    assert_in_delta(@stats.southwest_average.to_s, 25.0, "Error #{@stats.southwest_average}")
  end
end