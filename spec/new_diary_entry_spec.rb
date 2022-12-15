require "new_diary_entry"

RSpec.describe DiaryEntry do
  context "when entry added" do
    it "it returns title" do
    entry_1 = DiaryEntry.new("Monday", "Manic " * 200)
    expect(entry_1.title).to eq "Monday"
    end

    it "it returns contents" do
    entry_1 = DiaryEntry.new("Monday", "Manic " * 200)
    expect(entry_1.contents).to eq ("Manic " * 200)
    end
  
    it "it counts the words" do
    entry_1 = DiaryEntry.new("Monday", "")
    expect(entry_1.count_words).to eq 0
    end

    it "it returns zero if contents is empty the words" do
      entry_1 = DiaryEntry.new("Monday", "Manic " * 200)
      expect(entry_1.count_words).to eq 200
      end
  
  end
end
