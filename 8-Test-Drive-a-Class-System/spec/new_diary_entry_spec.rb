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
      entry_1 = DiaryEntry.new("Monday", "Manic " * 200)
      expect(entry_1.count_words).to eq 200
    end

    it "it returns zero if contents is empty the words" do
      entry_1 = DiaryEntry.new("Monday", "")
      expect(entry_1.count_words).to eq 0
    end

    it "it returns reading time for entry" do
      entry_1 = DiaryEntry.new("Monday", "Manic " * 200)
      expect(entry_1.reading_time(110)).to eq 2
    end
  end
################################
  context "contents unreadable in given time" do
    it "returns a readable chunk of text" do
      entry_1 = DiaryEntry.new("bible", "each peach pear")
      result = entry_1.reading_chunk(2, 1)
      expect(result).to eq "each peach"
    end

    it "returns next chunk when it is called" do
      entry_1 = DiaryEntry.new("bible", "each peach pear")
      entry_1.reading_chunk(2, 1)
      result = entry_1.reading_chunk(2, 1)
      expect(result).to eq "pear"
    end

    it "restarts after reading whole contents" do
      example = DiaryEntry.new("bible", "each peach pear")
      example.reading_chunk(2, 1)
      example.reading_chunk(2, 1)
      apple = example.reading_chunk(2, 1)
      expect(apple).to eq "each peach"
    end
    
  end
end
