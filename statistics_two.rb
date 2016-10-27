require_relative 'percentage.rb'
require_relative 'compass_dice.rb'
class StatisticsTwo<Statistics
    def initialize
      super
      @table= {:north => 0, :east => 0, :south => 0, :west => 0, :northeast=> 0,:northwest => 0, :southeast => 0, :southwest => 0}
      @total=0
    end

    def northeast_average
      northeast =@table.values_at(:northeast).join.to_f
      northeast = northeast/(total_throws)*100
      Percentage.new(northeast)

    end
    def northwest_average
      northwest =@table.values_at(:northwest).join.to_f
      northwest = northwest/(total_throws)*100
      Percentage.new(northwest)

    end

    def southwest_average
      southwest =@table.values_at(:southwest).join.to_f
      southwest = southwest/(total_throws)*100
      Percentage.new(southwest)
    end
    def southeast_average
      southeast =@table.values_at(:southeast).join.to_f
      southeast = southeast/(total_throws)*100
      Percentage.new(southeast)
    end


end