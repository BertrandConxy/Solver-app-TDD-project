require './solver'

describe Solver do
  before :all do
    @solver = Solver.new
  end
  context 'when given argument n to calculate factorial' do
    it 'returns the factorial of the number given' do
      expect(@solver.find_factorial(5)).to eql(120)
    end

    it 'returns 1 if argument is 0' do
      expect(@solver.find_factorial(0)).to eql(1)
    end

    it 'raises Error when argument is negative integer' do
      expect { @solver.find_factorial(-5) }.to raise_error('ArgumentError')
    end
  end

  context 'when given a string argument' do
    it 'returns a reversed string' do
      expect(@solver.reverse_string('hello')).to eql('olleh')
    end
  end

  context 'when given an integer argument' do
    it "returns 'fizz' when argument is divisible by 3" do
      expect(@solver.fizzbuzz(9)).to eql('fizz')
    end

    it "returns 'buzz' when argument is divisible by 5" do
      expect(@solver.fizzbuzz(10)).to eql('buzz')
    end

    it "returns 'fizzbuzz' when argument is divisible by 3 and 5" do
      expect(@solver.fizzbuzz(30)).to eql('fizzbuzz')
    end

    it 'returns that argument when it is not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(7)).to eql('7')
    end
  end
end
