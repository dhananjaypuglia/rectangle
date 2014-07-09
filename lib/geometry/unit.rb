#Convert any unit to Millimeter
class Unit

def initialize (conversion_factor)
  @conversion_factor=conversion_factor
end
def to_mm length
  length * @conversion_factor
end
end

Unit::METRE=Unit.new(1000)
Unit::CM=Unit.new(10)
Unit::MM=Unit.new(1)



