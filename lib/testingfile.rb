# class DiaryEntry
#   def initialize(title, contents) # title, contents are strings
#     # ...
#   end

#   # Returns the title as a string
#   def title(title)
#     @title = title #this might just be return title
#   end
    
#   # Returns the contents as a string
#   def contents(contents)
#     @contents = contents #this might just be return contents
#   end
    
#   # Returns the number of words in the contents as an integer
#   def count_words
#     if @contents == ""
#       return 0
#     else
#     return @contents.split.length
#     end
#   end

#   def reading_time(wpm) 
#     @wpm = wpm
#     return @count_words / @wpm 
#     # wpm is an integer representing the number of words the
#                         # user can read per minute
#     # Returns an integer representing an estimate of the reading time in minutes
#     # for the contents at the given wpm.
#   end

#   def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
#                                   # of words the user can read per minute
#                                   # `minutes` is an integer representing the
#                                   # number of minutes the user has to read
#     # Returns a string with a chunk of the contents that the user could read
#     # in the given number of minutes.
#     # If called again, `reading_chunk` should return the next chunk, skipping
#     # what has already been read, until the contents is fully read.
#     # The next call after that it should restart from the beginning.
#   end
# end
