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
  
  it "returns 1 for 12200 words" do
    result = read_time("one " * 12200)
    expect(result).to eq 61
  end

  it "it rounds up 100 words to 1" do
    result = read_time("one " * 100)
    expect(result).to eq 1
  end

  end
