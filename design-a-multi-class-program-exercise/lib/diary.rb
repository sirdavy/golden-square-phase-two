class Diary
  def initialize
    @diary_entries = []
    @todo_entries = []
  end

  def read_all_diary
    return @diary_entries
  end

  def add_diary(diary_entry)
    @diary_entries << diary_entry
  end

  def read_diary(diary_entry)
    return diary_entry
  end

  def select_by_time(wpm, time)
    reading_time = wpm * time
    test = @diary_entries.select { |entry| entry.word_count <= reading_time }
    test = test.sort_by { |entry| entry.word_count }
    return test[-1]
  end

  def add_todo(todo_entry)
    @todo_entries << todo_entry
  end

  def all_todos
    return @todo_entries
  end

  def todo_incomplete
    incomplete_tasks = @todo_entries.select { |entry| entry.status == 0 }
    return incomplete_tasks
  end

  def todo_complete
    complete_tasks = @todo_entries.select { |entry| entry.status == 1 }
    return complete_tasks
  end

  def list_numbers
    numbers =
      @diary_entries.map do |element|
        element.contents.scan(/([^A-Z|^"]{6,})/i).collect { |x| x[0].strip }
      end
    return numbers.flatten
  end
end
