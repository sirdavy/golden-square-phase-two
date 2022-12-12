1. Describe the Problem

I want to the program to return a percentage representing all the sentences I have sent it that have correct grammar (starts with a capital, ends with punctuation).

2. Design the Class Interface

class GrammarStats
  def initialize
    # ...
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end

3. Create Examples as Tests

example = GrammarStats.new

example.check(This is an example sentence.) => 100
example.check(this is another example sentence.) => 50
example.check(this is one more example sentence) => 33.33
example.check(this is my final example sentence) => 25

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
