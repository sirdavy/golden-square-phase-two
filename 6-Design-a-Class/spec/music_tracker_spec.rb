require "music_tracker"

RSpec.describe MusicTracker do
  it "adds a track to the list" do
    playlist = MusicTracker.new
    playlist.add("Kid Charlemagne")
    expect(playlist.view).to eq ["Kid Charlemagne"]
  end

  it "add more than one track to list" do
    playlist = MusicTracker.new
    playlist.add("Kid Charlemagne")
    playlist.add("Hey, Nineteen")
    playlist.view => ["Kid Charlemagne", "Hey, Nineteen"]
  end

  it "returns error if track is already listed" do
    playlist = MusicTracker.new
    playlist.add("Babylon Sisters")
    expect {
      playlist.add("Babylon Sisters")
    }.to raise_error "Track already added."
  end

  it "returns error if list is empty" do
    playlist = MusicTracker.new
    expect { playlist.view }.to raise_error "List is empty"
  end
end
