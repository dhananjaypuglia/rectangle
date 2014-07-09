#Convert any unit to Millimeter
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
        length*1000
      when Unit::CM
        length*10
      when Unit::MM
        length
      else
        length

    end
  end

end