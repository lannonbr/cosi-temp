require 'cosi-temp/temp-generator'
require 'cosi-temp/meetings-generator'
require 'cosi-temp/projects-generator'

class CosiTemp
  def initialize
    if ARGV[0].downcase == "meeting"
      puts "Making a meeting temp"
      meeting = MeetingsGenerator.new(Date.today)
      meeting.to_file
    elsif ARGV[0].downcase == "project"
      puts "Making a project temp"
      author = ARGV[ARGV.find_index("-author")+1]
      title = ARGV[ARGV.find_index("-name")+1]
      project = ProjectsGenerator.new(author, title, Date.today)
      project.to_file
    end
  end
end
