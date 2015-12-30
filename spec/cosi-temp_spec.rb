require 'spec_helper'

RSpec.describe MeetingsGenerator do
  let(:date) { Date.parse("2015-12-04") }

  before(:each) do
    @meeting = MeetingsGenerator.new(date)
  end

  it "has the passed in date" do
    expect(@meeting.date).to eq date
  end

  it "creates the name of the file" do
    expect(@meeting.filename).to eq "2015-12-04-Meeting-Minutes.md"
  end

  it "forms the correct header" do
    correct_header = "Meeting Minutes: December 4"
    expect(@meeting.title).to eq correct_header
  end

  it "generates the correct template" do
    filepath = File.expand_path('../../data/meetingstemp_filled.md', __FILE__)
    correct_file_array = File.open(filepath).readlines
    expect(@meeting.file_array).to eq correct_file_array
  end
end
