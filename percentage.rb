class Percentage
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  # return formatted statistics percentage  e.g. 20%
  def to_s
    "#{@value}#{'%'} "
  end

end