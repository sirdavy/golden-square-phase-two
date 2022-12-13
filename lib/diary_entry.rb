class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @furthest_point_read = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    words.length
  end

  def reading_time(wpm)
    fail "Reading time muts be above zero" unless wpm.positive?
    # no need to turn this into an instance variable @wpm = wpm
    # don't need to repeat this formula @contents.split(" ").length / @wpm
    # it's already created within the class. You can refer to that.
    return (count_words / wpm.to_f).ceil
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
