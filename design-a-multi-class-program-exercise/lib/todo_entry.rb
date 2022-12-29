class TodoEntry
  def initialize(task)
    @task = task
    @status = 0
  end

  def task
    return @task
  end

  def status
    return @status
  end

  def done?
    if @status == 0
      return false
    elsif @status == 1
      return true
    end
  end

  def mark_done
    @status = 1
  end
end
