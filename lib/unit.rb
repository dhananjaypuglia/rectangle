class Unit
  METRE = Object.new
  CM = Object.new
  MM = Object.new
 def initialize type
   @type = type
 end

  def to_mm length
    case @type
      when Unit::METRE
        line_length = length*1000
      when Unit::CM
        line_length = length*10
      when Unit::MM
        line_length = length
      else
        line_length = length

    end
  end

end