Class Design Recipe

1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

class MusicTracker

def initialize
# create musiclist array
end

def add
# add track to musiclist
# return error if track already entered
end

def view
# return musiclist
# error message if musiclist empty
end

end


3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
playlist = MusicTracker.new
playlist.add("Kid Charlemagne")
playlist.view => ["Kid Charlemagne"]

# 2
playlist = MusicTracker.new
playlist.add("Kid Charlemagne")
playlist.add("Hey, Nineteen")
playlist.view => ["Kid Charlemagne", "Hey, Nineteen"]

# 3
playlist = MusicTracker.new
playlist.add("Babylon Sisters")
playlist.add("Babylon Sisters") => "Track already added."

# 4
playlist = MusicTracker.new
playlist.view => "List is empty"

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.



