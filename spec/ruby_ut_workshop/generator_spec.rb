require 'spec_helper'

describe RubyUtWorkshop::Generator do

  let(:generator) { RubyUtWorkshop::Generator.new }

  describe '#generate' do

    it 'should be 4-digit' do
      10.times do
        expect( generator.generate ).to match /^\d{4}$/
      end
    end

    it 'no repeated digits' do
      10.times do
        expect(
          ((0..9).map(&:to_s) - generator.generate.chars).size
        ).to eq 6
      end
    end

    it 'should be random' do
      expect(
        (0...3).map{ generator.generate }.uniq.size
      ).to be > 1
    end

  end

end
