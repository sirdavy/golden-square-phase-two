require "todo_list"
require "todo"

RSpec.describe "todo integration test" do
  it "adds todos to the list and returns them" do
    december_todo = TodoList.new
    dec_td1 = Todo.new("wash the cat")
    dec_td2 = Todo.new("sell the car")
    dec_td3 = Todo.new("feed the dog")
    december_todo.add(dec_td1)
    december_todo.add(dec_td2)
    december_todo.add(dec_td3)
    expect(december_todo.incomplete).to eq [dec_td1, dec_td2, dec_td3]
  end

  it "returns empty list of todos if none complete" do
    december_todo = TodoList.new
    dec_td1 = Todo.new("wash the cat")
    dec_td2 = Todo.new("sell the car")
    dec_td3 = Todo.new("feed the dog")
    december_todo.add(dec_td1)
    december_todo.add(dec_td2)
    december_todo.add(dec_td3)
    expect(december_todo.complete).to eq []
  end

  it "returns list of compete todos" do
    december_todo = TodoList.new
    dec_td1 = Todo.new("wash the cat")
    dec_td2 = Todo.new("sell the car")
    dec_td3 = Todo.new("feed the dog")
    december_todo.add(dec_td1)
    december_todo.add(dec_td2)
    december_todo.add(dec_td3)
    dec_td2.mark_done!
    expect(december_todo.complete).to eq [dec_td2]
  end

  it "returns list of incompete todos when complete todos exist" do
    december_todo = TodoList.new
    dec_td1 = Todo.new("wash the cat")
    dec_td2 = Todo.new("sell the car")
    dec_td3 = Todo.new("feed the dog")
    december_todo.add(dec_td1)
    december_todo.add(dec_td2)
    december_todo.add(dec_td3)
    dec_td2.mark_done!
    expect(december_todo.incomplete).to eq [dec_td1, dec_td3]
  end

  it "marks all todos as complete" do
    december_todo = TodoList.new
    dec_td1 = Todo.new("wash the cat")
    dec_td2 = Todo.new("sell the car")
    dec_td3 = Todo.new("feed the dog")
    december_todo.add(dec_td1)
    december_todo.add(dec_td2)
    december_todo.add(dec_td3)
    december_todo.give_up!
    expect(december_todo.complete).to eq [dec_td1, dec_td2, dec_td3]
  end
end
