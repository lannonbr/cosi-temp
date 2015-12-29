require 'spec_helper'

RSpec.describe MeetingsGenerator do
  let(:date) { Date.parse("2015-12-04") }

  it "has the passed in date" do
    meeting = MeetingsGenerator.new(date)
    expect(meeting.date).to eq date
  end

  it "creates the name of the file" do
    meeting = MeetingsGenerator.new(date)
    expect(meeting.filename).to eq "2015-12-04-Meeting-Minutes.md"
  end
end
