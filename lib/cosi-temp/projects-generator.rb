class ProjectsGenerator < TempGenerator
  attr_accessor :author

  def initialize(author, title, date)
    super(date)
    @title = title
    @filename = gen_filename
    @author = author
    @file_array = create_file
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
