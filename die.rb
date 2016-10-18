class Die
 def initialize
   
 end

  def throw!
    number = Random.new.rand(1..4)
    case
      when 1 then North
      when 2 then South
      when 3 then East
      when 4  then West

    end
  end



end