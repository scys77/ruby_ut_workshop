require 'spec_helper'

describe RubyUtWorkshop::Comparator do

  it 'should be compared' do
    comparator = RubyUtWorkshop::Comparator.new

    expect( comparator.compare('1234', '1234') ).to eq '4A0B'
    expect( comparator.compare('1234', '2341') ).to eq '0A4B'
    expect( comparator.compare('1234', '5678') ).to eq '0A0B'
    expect( comparator.compare('1234', '2134') ).to eq '2A2B'
  end
end
