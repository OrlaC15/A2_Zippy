require_relative 'grid.rb'
class Point

  attr_accessor :x, :y

  def initialize
    @x= 0
    @y= 0
  end

  def err_msg
    puts "Oops, hit the boundary :(#{@x},#{@y})"
  end

  def points_print
    puts "Hopped to :(#{@x},#{@y})"
  end


  def move!(direction)
    # puts "Direction #{direction}"
    case direction
      when :north
        @y += 1
      when :east
        @x += 1
      when :south
        @y -= 1
      when :west
        @x -= 1
      #else

    end
  end

end