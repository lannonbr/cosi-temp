require 'spec_helper'

RSpec.describe MeetingsGenerator do
  it "is a generator" do
    expect(MeetingsGenerator.new).to_not be_nil
  end
end
