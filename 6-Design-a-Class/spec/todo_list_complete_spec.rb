require 'todo_list_complete'

RSpec.describe Todo do
  it "adds a task to the array" do
    example = Todo.new
    example.add("Milk the cows.")
    expect(example.view).to eq ["Milk the cows."]
  end
  
  it "returns error message if todo is already present" do
    task_for_week = Todo.new
    task_for_week.add("Wash the car.")
    expect{task_for_week.add("Wash the car.")}.to raise_error "Todo already added."
  end

  it "returns error message if todo is already present" do
    task_for_week = Todo.new
    expect{task_for_week.view}.to raise_error "List is empty"
  end

  it "removes todo from todo list" do
    task_for_week = Todo.new
    task_for_week.add("Wash the car.")
    expect(task_for_week.remove("Wash the car.")).to eq []
  end
  
  it "returns error when task flagged for deletion is not present" do
    task_for_week = Todo.new
    expect{task_for_week.remove("Wash the car.")}.to raise_error "Todo not present."
  end


end

