require 'date'

class MeetingsGenerator < TempGenerator
  def initialize(date)
    super(date)
    @filename = gen_date
    @title = gen_title
    @file_array = create_file
  end

  def to_file
    if File.exist? @filename
      puts "The file already exists. Quitting"
      return
    end
    File.open(@filename, 'w') do |f|
      @file_array.each { |line| f.write line }
    end
    puts "File written to #{@filename}"
  end

  private

  def gen_date
    "#{@date.strftime('%Y-%m-%d')}-Meeting-Minutes.md"
  end

  def gen_title
    "Meeting Minutes: #{@date.strftime('%B %-d')}"
  end

  def create_file
    array = []
    File.open(File.expand_path("../../../data/meetingstemp.md", __FILE__)) do |f|
      array = f.readlines
      array.unshift "\n"
      array.unshift "---\n"
      array.unshift "categories: minutes\n"
      array.unshift "title: \"#{@title}\"\n"
      array.unshift "layout: post\n"
      array.unshift "---\n"
    end

    array
  end
end
