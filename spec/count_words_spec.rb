require 'count_words'
RSpec.describe "count_words method" do

  it "returns word count of an array of strings" do
    result = count_words("apples pears peaches")
    expect(result).to eq 3
  end
end



