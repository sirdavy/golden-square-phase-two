require "diary"
require "new_diary_entry"

RSpec.describe "integration test" do
  context "when entries are added" do
    it "comes back in a list" do
      david_diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "Manic " * 200)
      entry_2 = DiaryEntry.new("Tuesday", "Ruby " * 300)
      entry_3 = DiaryEntry.new("Wednesday", "Week " * 400)
      david_diary.add(entry_1)
      david_diary.add(entry_2)
      david_diary.add(entry_3)
      expect(david_diary.all).to eq [entry_1, entry_2, entry_3]
    end

    it "counts the total number of words" do
      david_diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "Manic " * 200)
      entry_2 = DiaryEntry.new("Tuesday", "Ruby " * 300)
      entry_3 = DiaryEntry.new("Wednesday", "Week " * 400)
      david_diary.add(entry_1)
      david_diary.add(entry_2)
      david_diary.add(entry_3)
      expect(david_diary.count_words).to eq 900
    end
  end

  context "when passed a reading speed" do
    it "returns the minutes it would take to read all entries" do
      david_diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "Manic " * 200)
      entry_2 = DiaryEntry.new("Tuesday", "Ruby " * 300)
      entry_3 = DiaryEntry.new("Wednesday", "Week " * 400)
      david_diary.add(entry_1)
      david_diary.add(entry_2)
      david_diary.add(entry_3)
      expect(david_diary.reading_time(200)).to eq 5 #assuming a rounding up
    end
  end
  
  context "when passed a reading speed and time available" do
    it "returns the entry closest to but not over the estimated time" do
      david_diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "Manic " * 200)
      entry_2 = DiaryEntry.new("Tuesday", "Ruby " * 300)
      entry_3 = DiaryEntry.new("Wednesday", "Week " * 400)
      david_diary.add(entry_1)
      david_diary.add(entry_2)
      david_diary.add(entry_3)
      result = david_diary.find_best_entry_for_reading_time(120, 3)
      expect(result).to eq entry_2
      #(or is it [entry_2])
      #(wpm, minutes)ie 360 words, entry_3(400) is too much.
    end
  end

end



