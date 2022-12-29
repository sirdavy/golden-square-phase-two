require "diary"
require "diary_entry"
require "todo_entry"

RSpec.describe "integration tests" do
  it "add entries to the diary" do
    david_diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "Manic " * 100)
    entry_2 = DiaryEntry.new("Tuesday", "Ruby " * 200)
    entry_3 = DiaryEntry.new("Wednesday", "Week " * 300)
    david_diary.add_diary(entry_1)
    david_diary.add_diary(entry_2)
    david_diary.add_diary(entry_3)
    expect(david_diary.read_all_diary).to eq [entry_1, entry_2, entry_3]
  end

  it "returns specified entry" do
    david_diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "Manic " * 100)
    entry_2 = DiaryEntry.new("Tuesday", "Ruby " * 200)
    entry_3 = DiaryEntry.new("Wednesday", "Week " * 300)
    david_diary.add_diary(entry_1)
    david_diary.add_diary(entry_2)
    david_diary.add_diary(entry_3)
    expect(david_diary.read_diary(entry_2)).to eq entry_2
  end

  it "returns longest diary entry readable in time given" do
    david_diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "Manic " * 100)
    entry_2 = DiaryEntry.new("Tuesday", "Ruby " * 200)
    entry_3 = DiaryEntry.new("Wednesday", "Week " * 300)
    david_diary.add_diary(entry_1)
    david_diary.add_diary(entry_2)
    david_diary.add_diary(entry_3)
    result = david_diary.select_by_time(83, 3)
    expect(result).to eq entry_2
    # result = david_diary.select_by_time(101, 3)
    # expect(result).to eq entry_3
  end

  it "adds todo task" do
    david_diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "Manic " * 100)
    entry_2 = DiaryEntry.new("Tuesday", "Ruby " * 200)
    entry_3 = DiaryEntry.new("Wednesday", "Week " * 300)
    david_diary.add_diary(entry_1)
    david_diary.add_diary(entry_2)
    david_diary.add_diary(entry_3)
    todo_1 = TodoEntry.new("Wash the cat")
    todo_2 = TodoEntry.new("Walk the cow")
    todo_3 = TodoEntry.new("Milk the dog")
    david_diary.add_todo(todo_1)
    david_diary.add_todo(todo_2)
    david_diary.add_todo(todo_3)
    expect(david_diary.todo_incomplete).to eq [todo_1, todo_2, todo_3]
  end

  it "returns list of complete tasks" do
    david_diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "Manic " * 100)
    entry_2 = DiaryEntry.new("Tuesday", "Ruby " * 200)
    entry_3 = DiaryEntry.new("Wednesday", "Week " * 300)
    david_diary.add_diary(entry_1)
    david_diary.add_diary(entry_2)
    david_diary.add_diary(entry_3)
    todo_1 = TodoEntry.new("Wash the cat")
    todo_2 = TodoEntry.new("Walk the cow")
    todo_3 = TodoEntry.new("Milk the dog")
    david_diary.add_todo(todo_1)
    david_diary.add_todo(todo_2)
    david_diary.add_todo(todo_3)
    todo_1.mark_done
    todo_3.mark_done
    expect(david_diary.todo_complete).to eq [todo_1, todo_3]
  end

  it "returns any telephone numbers found in diary entries" do
    david_diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", ("Manic " * 100) + "07968 111111 ")
    entry_2 = DiaryEntry.new("Tuesday", ("Ruby " * 200) + "07968222222 ")
    entry_3 =
      DiaryEntry.new(
        "Wednesday",
        ("Week " * 300) + "07968333333 " + "07968444444 "
      )
    david_diary.add_diary(entry_1)
    david_diary.add_diary(entry_2)
    david_diary.add_diary(entry_3)
    expect(david_diary.list_numbers).to eq [
         "07968 111111",
         "07968222222",
         "07968333333 07968444444"
       ]
  end
end
