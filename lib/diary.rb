class Diary
  
  def initialize
    @diary = []
  end

  def add(entry)
    @diary << entry
  end

  def all
    return @diary  
  end

  def count_words
    return @diary.map(&:count_words).sum 
  end
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
# Q1 - each instance of DiaryEntry has title AND contents how is this method only counting the contents?
# Q2 - it references count_words which is a method that only exists in DiaryEntry, how does it know about it? How come there isn't a conflict between the two methods of same name? How does it know which takes precedence?

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end