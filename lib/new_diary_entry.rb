class DiaryEntry

  def initialize(title, contents) 
  @title = title
  @contents = contents
  @furthest_point_read = 0
  end

  def title
    return @title
    # Returns the title as a string
  end

  def contents
    return @contents
    # Returns the contents as a string
  end

  def count_words
    @total_words = @contents.split.length
    return @total_words
    # Returns the number of words in the contents as an integer
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    @wpm = wpm
    @total_words = @contents.split.length
    estimated_read_time = (@total_words.to_f / @wpm).ceil
    return estimated_read_time 
  end

  def reading_chunk(wpm, minutes) 
    words_we_can_read = wpm * minutes
    start_from = @furthest_point_read
    end_at = @furthest_point_read + words_we_can_read
    word_list = words[start_from, end_at]
    if end_at > count_words
      @furthest_point_read = 0
    else
    @furthest_point_read = end_at
    end
    return word_list.join(" ")
  end

    private

    def words
      return @contents.split(" ")
    end

end