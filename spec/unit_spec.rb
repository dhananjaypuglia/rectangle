require 'spec_helper'

describe Unit do

  it 'should convert the length in metre to mm' do
    unit=Unit.new(Unit::METRE)
    expect(unit.to_mm 2).to eq(2000)
  end
  it 'should convert the length in cm to mm' do
    unit=Unit.new(Unit::CM)
    expect(unit.to_mm 20).to eq(200)
  end
end