require_relative '../lexiconomitron.rb'

describe Lexiconomitron do

  let (:lexi) {Lexiconomitron.new}

	describe "#eat_t" do
    it "for a empty string return empty" do
      expect(lexi.eat_t("")).to eq("")
    end

    it "for a t string remove the input" do
      expect(lexi.eat_t("t")).to eq("")
    end

    it "input don't have t return the same input" do
      expect(lexi.eat_t("Good morning")).to eq("Good morning")
    end

    it "removes every letter t for the input" do
      expect(lexi.eat_t("Great scott!")).to eq("Grea sco!")
    end
    it "removes every letter t upper or downcase for the input" do
      expect(lexi.eat_t("The good tea")).to eq("he good ea")
    end
  end

  describe "#shazam" do
    it "from empty array return an empty array" do
      expect(lexi.shazam([])).to eq([])
    end

    it "reverse 1 word and remove Ts from array" do
      expect(lexi.shazam(["Teacher"])).to eq(["rehcae"])
    end

    it "reverse every word from an array and remove every Ts from every word" do
      expect(lexi.shazam(["The", "good", "tea"])).to eq(["eh", "doog", "ae"])
    end
  end

  describe "#reverse_array_with_words" do
    it "reverse 1 word from array" do
      expect(lexi.reverse_array_with_words(["Word"])).to eq(["droW"])
    end

     it "reverse every word from an array with 2 words" do
      expect(lexi.reverse_array_with_words(["New", "wortt"])).to eq(["weN", "ttrow"])
    end
  end
end