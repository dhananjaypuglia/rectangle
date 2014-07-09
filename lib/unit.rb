#Convert any unit to Millimeter
class Metre

  def to_mm lenght
    lenght*1000
  end

end
class Centimetre

  def to_mm lenght
    lenght*10
  end

end
class Millimetre

  def to_mm lenght
    lenght
  end

end

class Unit
  METRE = Metre.new
  CM = Centimetre.new
  MM = Millimetre.new
def initialize (unit_type)

  @unit=ObjectSpace._id2ref(unit_type.object_id)
end
def to_mm length
  @unit.to_mm length
end
end




