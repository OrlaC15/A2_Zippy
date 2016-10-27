require_relative 'compass_dice.rb'
require_relative 'die.rb'
require_relative 'grid.rb'
require_relative 'kangaroo.rb'
require_relative 'point.rb'
require_relative 'percentage.rb'
require_relative 'statistics.rb'
require_relative 'statistics2.rb'
require_relative 'zigzagaroo.rb'
class RunMaker
  attr_accessor :runs

  def initialize(grid)
    @grid = grid
    @runs = 0
    @skippy=Kangaroo.new @grid
    @zippy= Zigzagaroo.new @grid
    @totalskippy=[]
    @totalzippy=[]
  end

  def runs=(runs)
    @runs = runs
  end

  def createrun
    i = 1


    while i <= @runs do


      @skippy= Kangaroo.new @grid
      @zippy= Zigzagaroo.new @grid
     @skippy.hop!
      @zippy.hop!
      puts(" Run:#{i}  Kangaraoo #{@skippy.steps } hops, Zigzagaroo #{@zippy.steps } hops" )
      @totalskippy << @skippy.steps
      @totalzippy <<@zippy.steps
      i +=1
    end

  end
  def averagehopsskippy
    @totalskippy.inject(0) do |total, items|
      total += items/@runs
    end
  end
  def averagehopszippy
    @totalzippy.inject(0) do |total, items|
      total += items/@runs
    end
  end

  def stats_average
  puts"\n\n On average Kangaraoo took #{ averagehopsskippy} hops, Zigzagaroo took #{averagehopszippy } hops"
  end
  end


