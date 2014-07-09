require 'spec_helper'

describe Line do

  it 'gives the length of the line in mm' do
    line =Line.new(2,Unit::METRE)
    expect(line.line_length).to eq(2000)
  end
  context "equality" do
    let (:line) do
      line =Line.new(2, Unit::METRE)
    end
    it "should be equal if the line is identical (or same)" do
      line1 =Line.new(2, Unit::METRE)
      expect(line).to eq(line1)
    end

    it "should not be equal for different type" do
      object=Object.new
      expect(line).to_not eq(object)
    end

    it "should not be equal to nil" do
      expect(line).to_not eq(nil)
    end

    it "should be equal if the values are equal" do
      line1 =Line.new(2, Unit::METRE)
      expect(line).to eq(line1)
    end

    it "should point to the same value if two rectangle amounts are same" do
      line1 =Line.new(2, Unit::METRE)
      expect(line.hash).to eq(line1.hash)
    end
    it "symmetric property" do
      line1 =Line.new(2, Unit::METRE)
      expect(line).to eq(line1) and expect(line1).to eq(line)
    end

    it "transitive property" do
      line1 =Line.new(2, Unit::METRE)
      line2 =Line.new(2, Unit::METRE)
      expect(line).to eq(line1) and expect(line1).to eq(line2) and expect(line2).to eq(line)
    end
  end
end