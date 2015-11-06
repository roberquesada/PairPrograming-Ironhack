require_relative "../Calculator.rb"

describe Calculator do

  before :each do
    @calculator = Calculator.new
  end

  describe "#add" do
    it "1 + 1 is 2" do
      expect(@calculator.add(1,1)).to eq(2)
    end

    it "2 + 5 is 7" do
      expect(@calculator.add(2,5)).to eq(7)
    end
  end

  describe "#substract" do
    it "2 - 1 is 1" do
      expect(@calculator.substract(2,1)).to eq(1)
    end

    it "4 - 1 is 3" do
      expect(@calculator.substract(4,1)).to eq(3)
    end

  end

  describe "#multiply" do

    it "2 x 2 is 4" do
      expect(@calculator.multiply(2,2)).to eq(4)
    end

    it "2 x 3 is 6" do
      expect(@calculator.multiply(2,3)).to eq(6)
    end

  end

  describe "#divide" do

    it "6 / 2 is 3" do
      expect(@calculator.divide(6,2)).to eq(3)
    end

    it "6 / 3 is 2" do
      expect(@calculator.divide(6,3)).to eq(2)
    end
  end
end