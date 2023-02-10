require_relative '.././solver'

describe Solver do
  solver = Solver
  context 'factorial behavior.' do
    it 'should return 1 to factorial of 0.' do
      expect(solver.factorial(0)).to eql(1)
    end

    it 'should return 1 to factorial of 1.' do
      expect(solver.factorial(1)).to eql(1)
    end

    it 'should send backa  string saying error.' do
      expect(solver.factorial(-1)).to eql('Error')
    end

    it 'should send back an error if the the parameter is a String' do
      expect(solver.factorial('a')).to eql('Error')
    end

    it 'should return 6 to factorial of 3.' do
      expect(solver.factorial(3)).to eql(6)
    end

    it 'should return a factorial number of 5.' do
      expect(solver.factorial(5)).to eql(120)
    end
  end

  context 'fizzbuzz behavior.' do
    it 'should return fizz when divisble by 3' do
      expect(solver.fizzbuzz(6)).to eql('fizz')
    end

    it 'should return buzz when divisble by 5' do
      expect(solver.fizzbuzz(10)).to eql('buzz')
    end

    it 'should return fizzbuzz when divisble by 3 and 5' do
      expect(solver.fizzbuzz(15)).to eql('fizzbuzz')
    end
  end

  context 'reverse behavior.' do
    it 'should return olleh when given hello' do
      expect(solver.reverse('hello')).to eql('olleh')
    end
  end
end
