require_relative 'die'


class Statistics
  def initialize

    @table= {:north => 0, :east => 0, :south => 0, :west => 0}

  end
  def update_table(number)
   puts "Number in table #{number}"
    case number
      when 1
        @table[:north]+=1
      when 2

        @table[:east]+=1

      when 3
        @table[:south]+=1

      else
        @table[:west]+=1



    end
  end

  def print_table

    @table.each { |key, value| puts "#{key}  #{value}" }
  end



end