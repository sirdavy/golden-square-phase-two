require "todo_list"

RSpec.describe TodoList do
  it "initializes" do
  end

  it "initializes with an empty array" do
    december_todo = TodoList.new
    expect(december_todo.instance_variable_get(:@todo_list_array)).to eq []
  end
end
