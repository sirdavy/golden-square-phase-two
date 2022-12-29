require 'grammar_stats'

RSpec.describe GrammarStats do
  
  it "returns true for a good sentence" do
    example = GrammarStats.new
    expect(example.check("This is an example sentence.")).to eq true
  end

  it "returns false for a non cap sentence" do
    example = GrammarStats.new
    expect(example.check("this is another example sentence.")).to eq false
  end

  it "returns false for a non cap sentence non punctuated sentence" do
    example = GrammarStats.new
    expect(example.check("this is one more example sentence")).to eq false
  end

  it "returns false for a non punctuated sentence" do
    example = GrammarStats.new
    expect(example.check("This is my final example sentence")).to eq false
  end

  context "returns percentage" do
    it 'returns 50%' do
    example = GrammarStats.new
    example.check("This is an example sentence.")
    example.check("This is an example sentence")
    expect(example.percentage_good).to eq 50
    end

    it 'returns 33%' do
      example = GrammarStats.new
      example.check("This is an example sentence.")
      example.check("This is an example sentence")
      example.check("This is my final example sentence")
      expect(example.percentage_good).to eq 33
      end
    end
end

