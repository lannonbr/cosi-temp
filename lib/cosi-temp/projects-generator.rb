class ProjectsGenerator < TempGenerator
  attr_accessor :author

  def initialize(author, title, date)
    super(date)
    @title = title
    @filename = gen_filename
    @author = author
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

  def gen_filename
    "#{@date.strftime('%Y-%m-%d')}-#{@title.split.map{|word| word.downcase}.join('-')}.md"
  end

  def create_file
    array = ["---\n",
        "layout: post\n",
        "title: #{@title}\n",
        "author: #{@author}\n",
        "---\n"]

    array
  end
end
