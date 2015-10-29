require 'pry'

class StrReader


  def initialize file
    @file = file
    @file_content = ''
    @subtitles = []
  end

  def start
    read_file
    read_subtitle
    puts @subtitles[1]
  end

  def read_file
    @file_content = IO.read @file 
  end

  def read_subtitles
    @subtitles = @file_content.split(/^\n/)
  end


end

class Subtitle

  def initialize id, time_start, time_end, text
    @id = id
    @time_start = time_start
    @time_end = time_end
    @text = text
  end



end


sub = StrReader.new('subtitle.str').start

binding.pry