require 'rspec/autorun'

class Calculator
  def times_two(arg1)
    arg1 * 2
  end

  def sum(arg1, arg2)
    arg1 + arg2
  end
end

# Test

describe Calculator do
  let(:calculator) { Calculator.new }

  describe 'times_two' do
    it 'Multiples two numbers' do
      expect(calculator.times_two(3)).to eq(6)
    end
  end

  describe 'sum' do
    it 'Adds sum of two numbers' do
      expect(calculator.sum(2,2)).to eq(4)
    end
  end
end
