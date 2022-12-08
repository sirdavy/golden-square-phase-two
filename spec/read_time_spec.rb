require 'read_time'

RSpec.describe "read time method" do
  
  it "returns zero" do
    result = read_time("")
    expect(result).to eq 0
  end
  
  it "returns 1 for 200 words" do
    result = read_time("one " * 200)
    expect(result).to eq 1
  end

  it "it rounds up 100 words to 1" do
    result = read_time("one " * 100)
    expect(result).to eq 1
  end

  end


# RSpec.describe "read time method" do
#   it "returns error for empty argument" do
#     result = read_time()
#   expect { result }.to raise_error "No text input"
#   end
# end


# require 'count_words'
# RSpec.describe "count_words method" do

#   it "returns word count of an array of strings" do
#     result = count_words("apples pears peaches")
#     expect(result).to eq 3
#   end
# end
