require_relative 'grid.rb'
class Point
  def initialize
    @x= 0
    @y= 0
  end


  def to_s
    if (@x < 0 || @y <0)
      puts "Oops, hit the boundary :(#{@x},#{@y} )"
   else
    puts "Hopped to :(#{@x},#{@y} )"
  end
  end
end