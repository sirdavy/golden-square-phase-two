require 'diary_entry'

RSpec.describe DiaryEntry do
  it "constructs" do
   example = DiaryEntry.new("bible", "each peach pear plum")
   expect(example.title).to eq "bible"
   expect(example.contents).to eq "each peach pear plum"
  end


  describe "count_words method" do
    it "counts the words in string" do
      example = DiaryEntry.new("bible", "each peach pear plum I spy Tom Thumb")
      expect(example.count_words).to eq 8
    end
  end


  describe "reading_time method" do
    context "given a sensible number" do
      it "calculates how long it will take to read text" do
        example = DiaryEntry.new("bible", "one " * 550)
        expect(example.reading_time(200)).to eq 3
      end
    end
  

    context "given a silly number" do
      it "fail" do
        example = DiaryEntry.new("bible", "one " * 550)
        expect { example.reading_time(0) }.to raise_error "Reading time muts be above zero"
      end
    end
  end

  describe "reading_chunk method" do
    context "contents all readable in given time" do
      it "returns the full text" do
      example = DiaryEntry.new("bible", "each peach pear plum")
      apple = example.reading_chunk(4, 1)
      expect(apple).to eq "each peach pear plum"
      end
    end

  

    context "contents unreadable in given time" do
      it "returns a readable chunk of text" do
      example = DiaryEntry.new("bible", "each peach pear")
      apple = example.reading_chunk(2, 1)
      expect(apple).to eq "each peach"
      end
  
      it "returns next chunk when it is called" do
      example = DiaryEntry.new("bible", "each peach pear")
      example.reading_chunk(2, 1)
      apple = example.reading_chunk(2, 1)
      expect(apple).to eq "pear"
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
end


  # context "reading_chunk" do
  #   it "returns first portion of string according to reading time" do
  #   example = DiaryEntry.new("bible", "one " * 550)
  #   expect(example.reading_chunk(4, 1)).to eq "each peach pear plum"
  #   end
  
  #   it "returns string in consequtive chunks" do
  #     example = DiaryEntry.new("bible", "one " * 550)
  #     expect(example.reading_chunk(4, 4)).to eq "each peach pear plum"
  #     # expect(example.reading_chunk(4, 4)).to eq "I spy Tom Thumb"
  #     # expect(example.reading_chunk(4, 1)).to eq "Tom Thumb in the"
  #     # expect(example.reading_chunk(4, 1)).to eq "cupboard I spy Mother"
  #     end
  
#   end
# end
  # expect(example.reading_time(4)).to eq 1
  # expect(reading_chunk(4, 1)).to eq "each peach pear plum"
# counter 0
# 4mins counter 0
# x = 50(wpm)
# returns 0 to 50
# x + 50 = 100
# counter 1
# 4mins coutner 1
# returns 50 to 100
# x + 50 = 150
# counter 2
# 4mins coutner 2
# returns 100 to 150
# x + 50 = 200
# coutner 3
# 4mins coutner 3
# returns 150 to 200
# x + 50 = 250
# coutner 4
# 4mins counter 4