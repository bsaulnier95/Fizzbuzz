require 'rspec/autorun'
class Fizzbuzz
  def self
    Array(1..100).map do |n|
      if (n % 3).zero? && (n % 5).zero?
        'Fizzbuzz'
      elsif (n % 3).zero?
        'Fizz'
      elsif (n % 5).zero?
        'Buzz'
      else
        n
      end
    end
  end
end

describe Fizzbuzz do
  let(:fizzbuzz) { Fizzbuzz.new }
  it 'Returns Fizzbuzz for multiples of 3 and 5' do
    expect(fizzbuzz.self[14]).to eq('Fizzbuzz')
  end
  it 'Returns Fizz for multiples of 3' do
    expect(fizzbuzz.self[2]).to eq('Fizz')
  end
  it 'Returns Buzz for multiples of 5' do
    expect(fizzbuzz.self[4]).to eq('Buzz')
  end
  it 'Returns the number for non-multiples of 3 or 5' do
    expect(fizzbuzz.self[0]).to eq(1)
  end
end
