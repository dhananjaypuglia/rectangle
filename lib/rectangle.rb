#calculates the perimeter of rectangle
class Rectangle
  attr_reader :length, :breadth

  def initialize(length, breadth)
    @length=length
    @breadth=breadth
  end

  def == second_value
    return true if self.equal?(second_value)
    return false if second_value.nil?
    return false if second_value.class != self.class
    (@length==second_value.length) && (@breadth==second_value.breadth) ||
        (@breadth==second_value.length) && (@length==second_value.breadth)


  end

  def eql? other
    self==other
  end

  def hash
    length.hash*37+breadth.hash*37
  end

  def perimeter
    Line.new(2*(@length.line_length+@breadth.line_length),"mm")
  end

end