require 'date'

class MeetingsGenerator < TempGenerator

  def initialize(date)
    super(date)
    gen_date
  end

  private

  def gen_date
    @filename = "#{@date.strftime('%Y-%m-%d')}-Meeting-Minutes.md"
  end

end
