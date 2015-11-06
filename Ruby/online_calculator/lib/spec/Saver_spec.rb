require_relative '../Saver.rb'

RSpec.describe "Saver" do

  before :each do
    @saver = Saver.new('public/hola.txt')
  end

  describe "#read_file" do

    it "If file is empty return empty" do
      expect(@saver.read_file).to eq('')
    end

  end

  describe "#save_text" do

    it "if the file is empty and the input is empty, it returns empty" do
      expect(@saver.save_text('')).to eq('')
    end

  end
end