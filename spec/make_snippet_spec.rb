require 'make_snippet'
RSpec.describe "make snippet method" do
  
  it "returns an intact string of five words or less" do
    result = make_snippet("Each peach pear plum apple") 
    expect(result).to eq "Each peach pear plum apple"
  end
  
  it "it only returns first five words of string with ellipsis" do
    result = make_snippet("This is how you test a method") 
    expect(result).to eq "This is how you test..."
  end
end

# .split(' ')