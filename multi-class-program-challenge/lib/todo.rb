class Todo
  def initialize(task) # task is a string
    @task = task
    @status = 0
  end

  def task
    return @task
  end

  def mark_done!
    @status = 1
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    if @status == 1
      return true
    elsif @status == 0
      return false
    end
  end
end
