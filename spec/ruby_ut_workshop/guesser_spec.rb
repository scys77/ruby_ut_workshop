require 'spec_helper'

describe RubyUtWorkshop::Guesser do

  let(:guesser) { RubyUtWorkshop::Guesser.new }

  describe '#guess!' do

    it 'should return xAxB' do
      expect(guesser.guess!('1234')).to match /^\dA\dB$/
    end

    it 'should be compared' do
      allow(guesser).to receive(:answer).and_return("1234")

      expect( guesser.guess!('1234') ).to eq '4A0B'
      expect( guesser.guess!('2341') ).to eq '0A4B'
      expect( guesser.guess!('5678') ).to eq '0A0B'
      expect( guesser.guess!('2134') ).to eq '2A2B'
    end

  end

end
