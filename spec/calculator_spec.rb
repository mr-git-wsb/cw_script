require 'rspec'
require_relative '../calculator'

RSpec.configure do |config|
    config.color = true
    config.formatter = :documentation
end

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  it 'adds two numbers correctly' do
    expect(calculator.add(3, 4)).to eq(7)
  end

  it 'subtracts two numbers correctly' do
    expect(calculator.subtract(10, 4)).to eq(6)
  end

  it 'multiplies two numbers correctly' do
    expect(calculator.multiply(3, 4)).to eq(12)
  end

  it 'divides two numbers correctly' do
    expect(calculator.divide(12, 4)).to eq(3.0)
  end

  it 'returns error message when dividing by zero' do
    expect(calculator.divide(12, 0)).to eq('Error: Division by zero')
  end
end
