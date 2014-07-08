require 'spec_helper'

describe Rectangle do

  it "calulates the perimeter in mm for the given length of 2 m and 20 cm" do
    length=Line.new(2, Unit.new(Unit::METRE))
    breadth=Line.new(20, Unit.new(Unit::CM))
    rectangle=Rectangle.new(length, breadth)
    expected_length=Line.new(4400,Unit.new(Unit::MM))
    expect(rectangle.perimeter).to eq(expected_length)
  end
  context "equality" do
    let (:length) do
      length=Line.new(2, Unit.new(Unit::METRE))
    end
    let (:breadth) do
      breadth=Line.new(20, Unit.new(Unit::CM))
    end
    let (:rectangle) do
      rectangle=Rectangle.new(length, breadth)
    end
    it "should be equal if the rectangle is identical (or same)" do
      expect(rectangle).to eq(rectangle)
    end

    it "should not be equal for different type" do
      object=Object.new
      expect(rectangle).to_not eq(object)
    end

    it "should not be equal to nil" do
      expect(rectangle).to_not eq(nil)
    end

    it "should be equal if the values are equal" do
      rectangle1=Rectangle.new(breadth, length)

      expect(rectangle).to eq(rectangle1)
    end

    it "should point to the same value if two rectangle amounts are same" do
      rectangle1=Rectangle.new(breadth, length)
      expect(rectangle.hash).to eq(rectangle1.hash)
    end
    it "symmetric property" do
      rectangle1=Rectangle.new(breadth, length)
      expect(rectangle).to eq(rectangle1) and expect(rectangle1).to eq(rectangle)
    end

    it "transitive property" do
      rectangle1=Rectangle.new(length, breadth)
      rectangle2=Rectangle.new(breadth, length)
      expect(rectangle).to eq(rectangle1) and expect(rectangle1).to eq(rectangle2) and expect(rectangle2).to eq(rectangle)
    end
  end
end