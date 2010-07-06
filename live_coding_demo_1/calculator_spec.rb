require "#{File.dirname(__FILE__)}/calculator"

describe Calculator do
  
  before do
    @calculator = Calculator.new
  end

  it 'can add 2 numbers' do
    @calculator.add(1,2).should == 3
  end

  it 'can add 3 numbers' do
    @calculator.add(1,2,3).should == 6
  end

  it 'can add number from an array' do
    @calculator.add([1,2,3]).should == 6
  end

end
