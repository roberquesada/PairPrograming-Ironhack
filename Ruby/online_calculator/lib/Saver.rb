require 'pry'
require 'rspec'

class Saver

  def initialize file_name
    @file = file_name
  end

  def read_file
    IO.Read('public/#{@file}')
  end

  def save_text text
  end

end