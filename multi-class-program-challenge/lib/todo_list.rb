class TodoList
  def initialize
    @todo_list_array = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todo_list_array << todo
  end

  def incomplete
    incomplete =
      @todo_list_array.select do |element|
        element.instance_variable_get(:@status) == 0
      end
    return incomplete
  end

  def complete
    complete =
      @todo_list_array.select do |element|
        element.instance_variable_get(:@status) == 1
      end
    return complete
  end

  def give_up!
    @todo_list_array = @todo_list_array.each { |element| element.mark_done! }
    # Marks all todos as complete
  end
end
