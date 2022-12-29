require "diary"

RSpec.describe Diary do
  it "constructs" do
    david_diary = Diary.new
  end

  it "is an add diary mocking test" do
    david_diary = Diary.new
    entry_1 = double
    david_diary.add_diary(entry_1)
    expect(david_diary.read_all_diary).to eq [entry_1]
  end

  it "is an add todo mocking test" do
    david_diary = Diary.new
    todo_1 = double
    david_diary.add_todo(todo_1)
    expect(david_diary.all_todos).to eq [todo_1]
  end
end
