# calculates the length in mm
class Line
  attr_reader :line_length

  def initialize length, unit_type
    unit=Unit.new(unit_type)
    @line_length =  unit.to_mm length
  end
  def == second_value
    return true if self.equal?(second_value)
    return false if second_value.nil?
    return false if second_value.class != self.class
    @line_length=second_value.line_length

  end
  def hash
    @line_length*91.hash
  end

  def eql? other
    self==other
  end
end