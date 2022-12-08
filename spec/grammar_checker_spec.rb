require "grammar_checker"

RSpec.describe "grammar_checker method" do
  it "returns grammar is fine" do
    result = grammar_checker("Hello, world!") 
    expect(result).to eq "Grammar is fine."
  end

  it "returns needs cap" do
    result = grammar_checker("hello, world!") 
    expect(result).to eq "You need to capitalise the sentence."
  end

  it "returns needs punctuation at end" do
    result = grammar_checker("Hello, world") 
    expect(result).to eq "You need to end the sentence with punctuation."
  end

  it "returns needs cap and punctuation at end" do
    result = grammar_checker("hello, world") 
    expect(result).to eq "You need to capitalise the sentence and end with punctuation."
  end

  it "returns for empty string" do
    expect { grammar_checker("") }.to raise_error "You haven't input anything."
  end

end