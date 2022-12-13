require 'music_tracker'

RSpec.describe MusicTracker do
  it "adds a track to the list" do
    playlist = MusicTracker.new
    playlist.add("Kid Charlemagne")
    expect(playlist.view).to eq ["Kid Charlemagne"]
  end
end

# # 1
# playlist = MusicTracker.new
# playlist.add("Kid Charlemagne")
# playlist.view => ["Kid Charlemagne"]

# # 2
# playlist = MusicTracker.new
# playlist.add("Kid Charlemagne")
# playlist.add("Hey, Nineteen")
# playlist.view => ["Kid Charlemagne", "Hey, Nineteen"]

# # 3
# playlist = MusicTracker.new
# playlist.add("Babylon Sisters")
# playlist.add("Babylon Sisters") => "Track already added."

# # 4
# playlist = MusicTracker.new
# playlist.view => "List is empty"