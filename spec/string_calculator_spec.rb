# frozen_string_literal: true

require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.new.add('')).to eq(0)
    end

    it 'returns the number itself for a single number input' do
      expect(StringCalculator.new.add('1')).to eq(1)
    end

    it 'returns the sum of two comma-separated numbers' do
      expect(StringCalculator.new.add('1,5')).to eq(6)
    end

    it 'returns the sum of multiple comma-separated numbers' do
      expect(StringCalculator.new.add('1,2,3,4,5')).to eq(15)
    end

    it 'handles newline as a delimiter' do
      expect(StringCalculator.new.add("1\n2,3")).to eq(6)
    end
  end
end
