require 'spec_helper'

describe Unit do

  it 'should convert the length to mm' do
    unit=Unit.new(Unit::METRE)
    expect(unit.to_mm 2).to eq(2000)
  end
end