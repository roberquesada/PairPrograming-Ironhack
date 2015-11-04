require 'rspec'

class Lexiconomitron
  def eat_t string
    string.gsub(/T|t/, "")
  end

  def shazam array
    array_reversed = reverse_array_with_words(array)
    array_reversed.map { |word| eat_t(word) }
  end

  def reverse_array_with_words array
    array.map { |word| word.reverse }
  end
end