require "diary_entry"

RSpec.describe DiaryEntry do
  it "constructs" do
    entry_1 = DiaryEntry.new("Monday", "Manic " * 100)
  end

  it "returns title" do
    entry_1 = DiaryEntry.new("Monday", "Manic " * 100)
    expect(entry_1.title).to eq "Monday"
  end

  it "returns contents" do
    entry_1 = DiaryEntry.new("Monday", "Manic " * 100)
    expect(entry_1.contents).to eq "Manic " * 100
  end

  it "returns word count" do
    entry_1 = DiaryEntry.new("Monday", "Manic " * 100)
    expect(entry_1.word_count).to eq 100
  end
end
