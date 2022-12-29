1. Describe the Problem
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature

method name = grammar_check
grammar_checker(str)
grammar_checker(eg "Hello, world!") => eg "Grammar is fine."

3. Create Examples as Tests

# EXAMPLE

grammar_checker("Hello, world!") =>  "Grammar is fine."
grammar_checker("hello, world!") => "You need to capitalise the sentence."
grammar_checker("hello, world") => "You need to capitalise the sentence and end with punctuation."
grammar_checker("Hello, world") => "You need to end the sentence with punctuation."
grammar_checker("") => "You haven't input anything."

Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
