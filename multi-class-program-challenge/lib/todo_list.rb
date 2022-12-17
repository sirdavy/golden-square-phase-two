class TodoList
  def initialize
  @todo_list_array = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todo_list_array << todo
  end

  def incomplete
    return @todo_list_array
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end