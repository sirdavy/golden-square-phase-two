class Todo
  def initialize
    @array = []
  end

  def add(text)
    if @array.include?(text)
      fail "Todo already added."
    else
      @array << text
    end
  end

  def view
    if @array.empty?
      fail "List is empty"
    else
      return @array
    end
  end

  def remove(text)
    if !@array.include?(text)
      fail "Todo not present."
    else
      @array.delete(text)
      return @array
    end
  end
end
