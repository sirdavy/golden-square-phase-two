require 'todo' 

RSpec.describe Todo do
  it 'initializes' do
  end

  it 'takes a task as an argument and returns it' do
  dec_td1 = Todo.new("wash the cat")
  expect(dec_td1.task).to eq "wash the cat"
  end

end



