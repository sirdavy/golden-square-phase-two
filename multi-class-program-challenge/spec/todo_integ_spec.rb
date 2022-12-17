require 'todo_list'
require 'todo'

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


end


# #3
# it "raises an error when empty todo is added" do
#   december_todo = TodoList.new
#   expect{december_todo.add("")}.to raise_error "No todo entered"
# end

# #4
# december_todo = TodoList.new
# dec_td1 = Todo.new("wash the cat")
# dec_td2 = Todo.new("sell the car")
# dec_td3 = Todo.new("feed the dog")
# december_todo.add(dec_td1)
# december_todo.add(dec_td2)
# december_todo.add(dec_td3)
# expect(december_todo.complete).to eq []

#5
# december_todo = TodoList.new
# dec_td1 = Todo.new("wash the cat")
# dec_td2 = Todo.new("sell the car")
# dec_td3 = Todo.new("feed the dog")
# december_todo.add(dec_td1)
# december_todo.add(dec_td2)
# december_todo.add(dec_td3)
# result = december_todo.give_up!
# expect(result.complete).to eq [dec_td1, dec_td2, dec_td3]


#6


#7




