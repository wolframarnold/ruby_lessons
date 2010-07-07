require "array_extension"

describe Array do

  describe "#sum" do
    it 'should have a sum method' do
      [].should respond_to(:sum)
      [].respond_to?(:sum).should be_true
    end

    it "should be 0 for an empty array" do
      [].sum.should equal 0
    end

    it "should add all of the elements" do
      [1,2,4].sum.should equal 7
    end
  end

end
