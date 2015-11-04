require_relative "../PasswordChecker.rb"


describe PasswordChecker do

  before :each do
    @password_checker = PasswordChecker.new
  end

  describe "#check_password" do

    it 'returns true when password is correct' do
      expect(@password_checker.check_password('hola@hola.com', '9!$aAbB12345')).to eq(true)
    end

    it "If input is shorter than 7 return false" do
      expect(@password_checker.check_password('hola@hola.com', '9!$aAb')).to eq(false)
    end

    it "returns false when password no contains a number" do
      expect(@password_checker.check_password('hola@hola.com', 'n!$aAbBudtc')).to eq(false)
    end

    it "returns false when password no contains a letter" do
      expect(@password_checker.check_password('hola@hola.com', '9!$1122345')).to eq(false)
    end

    it "returns false when password no contains a symbols" do
      expect(@password_checker.check_password('hola@hola.com', '9aAbB12345')).to eq(false)
    end

    it "returns false when password no contains an uppercase" do
      expect(@password_checker.check_password('hola@hola.com', '9!$aabb12345')).to eq(false)
    end

    it "returns false when password no contains a lowercase" do
      expect(@password_checker.check_password('hola@hola.com', '9!$AABB12345')).to eq(false)
    end

    it "returns false when contain name from email" do
      expect(@password_checker.check_password('hola@test.com', '9!$aAbB12345hola')).to eq(false)
    end

    it "returns false when contain domain from email" do
      expect(@password_checker.check_password('hola@test.com', '9!$aAbB12test345')).to eq(false)
    end
  end
end