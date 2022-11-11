require_relative '../solver'

describe 'Solver' do
  before :all do
    @solver = Solver.new
  end

  context 'Class test' do
    it 'validates if Solver.new returns a class instance' do
      expect(@solver).to be_instance_of(Solver)
    end
  end

  context 'Factorial method tests' do
    it 'validates that not accepts more than one arguments' do
      expect { @solver.factorial(20, 15) }.to raise_error(ArgumentError)
    end

    it 'validates that not accepts a string as argument' do
      expect { @solver.factorial('20') }.to raise_error('Only positive integers')
    end

    it 'validates that not accepts a negative integer as argument' do
      expect { @solver.factorial(-10) }.to raise_error('Only positive integers')
    end

    it 'validates if returns zero with an argument one' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'validates if returns  the factorial number' do
      expect(@solver.factorial(7)).to eq(5040)
    end
  end

  context 'Reverse method tests' do
    it 'validates that not accepts a number as argument' do
      expect { @solver.reverse(20) }.to raise_error('Only strings')
    end

    it 'validates that not accepts more than one arguments' do
      expect { @solver.reverse('hello', 'world') }.to raise_error(ArgumentError)
    end

    it 'validates if returns a reversed word when a string word is given as argument' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end
  end

  context 'Fizzbuzz method tests' do
    it 'validates that not accepts more than one arguments' do
      expect { @solver.fizzbuzz(10, 20) }.to raise_error(ArgumentError)
    end

    it 'validates that not accepts a string as argument' do
      expect { @solver.fizzbuzz('20') }.to raise_error('Only integers')
    end

    it "validates if returns 'fizz'when NUM is divisible by 3" do
      expect(@solver.fizzbuzz(12)).to eq('fizz')
    end

    it "validates if returns 'buzz' when NUM is divisible by 5" do
      expect(@solver.fizzbuzz(20)).to eq('buzz')
    end

    it "validates if returns 'fizzbuzz' when NUM is divisible by 3 and 5" do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'validates if returns NUM in any other case' do
      expect(@solver.fizzbuzz(16)).to eq('16')
    end
  end
end
