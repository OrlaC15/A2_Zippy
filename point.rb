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

    case direction
      when :north
        @y += 1
      when :south
        @y -= 1
      when :east
        @x += 1
      when :west
        @x -= 1
      when :northeast
        @x += 1
        @y += 1
      when :northwest
        @x -= 1
        @y += 1
      when :southeast
        @x += 1
        @y -= 1
      when :southwest
          @x -= 1
          @y -= 1

    end
  end

end