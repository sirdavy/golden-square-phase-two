class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def word_count
    return @contents.split(" ").length
  end
end
