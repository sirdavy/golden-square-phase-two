require 'todo_entry'

RSpec.describe TodoEntry do
  it 'constructs' do
    todo_1 = TodoEntry.new('Wash the cat')
  end

  it 'returns false if todo has not been marked done' do
    todo_1 = TodoEntry.new('Wash the cat')
    expect(todo_1.done?).to eq false
  end

  it 'returns true if todo has been marked done' do
    todo_1 = TodoEntry.new('Wash the cat')
    todo_1.mark_done
    expect(todo_1.done?).to eq true
  end


end

